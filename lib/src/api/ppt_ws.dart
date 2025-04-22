import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:io';

import 'package:classroom_live_tools/src/model/ppt_ws_push/ppt_ws_push.dart';

class PPTWebSocketListener {
  final String url;
  Map<String, String>? headers;
  String cookieHeader;
  final bool debug; // The debug flag

  WebSocket? _webSocket;
  final StreamController<PptWsPush> _controller = StreamController<PptWsPush>();

  PPTWebSocketListener({
    required this.url,
    required this.cookieHeader,
    this.headers,
    this.debug = false,
  }) {
    headers ??= {
      'User-Agent':
          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36",
      'Pragma': "no-cache",
      'Cache-Control': "no-cache",
    };

    headers!["cookie"] == cookieHeader;
  }

  // Add a comment to disable the formatter word wrap
  final pongData = Uint8List.fromList([
    0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, //
  ]);

  final pingHeader = Uint8List.fromList([
    0x00, 0x00, 0x00, 0x14, 0x00, 0x10, 0x00, 0x01, //
  ]);

  final helloHeaderFull = Uint8List.fromList([
    0x00, 0x00, 0x00, 0x5D, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, //
  ]);

  final newPptHeader = Uint8List.fromList([
    0x00, 0x00, 0x01, 0xF1, 0x00, 0x10, 0x00, 0x01, //
  ]);

  /// Starts the PPT listener and returns a stream of PPT data.
  Stream<PptWsPush> startPptListener(int userId, int courseRealId) async* {
    try {
      // Connect to the WebSocket server
      _webSocket = await WebSocket.connect(url, headers: headers);
      logDebug("Connected to WebSocket.");

      // Create the initial subscription message
      final message = {
        "mid": userId,
        "room_id": "live_ppt://$courseRealId",
        "platform": "web",
        "accepts": [courseRealId],
      };
      final jsonMessage = json.encode(message).replaceAll(" ", "");
      final jsonMessageBytes = utf8.encode(jsonMessage);

      // Combine header and message into a single packet
      final combinedPacket = helloHeaderFull + jsonMessageBytes;
      _webSocket?.add(combinedPacket);

      logDebug(
        "Sent packet: ${combinedPacket.map((b) => b.toRadixString(16)).join(' ')}",
      );

      // Listen for messages from the server
      await for (var response in _webSocket!) {
        // Process incoming data
        if (response is List<int>) {
          // Check if the response is a ping
          if (_startsWith(response, pingHeader)) {
            logDebug("Ping received, sending pong.");
            final replyBytes = pongData;
            _webSocket?.add(replyBytes);
            await Future.delayed(Duration(seconds: 5));
          } else if (_startsWith(response, newPptHeader)) {
            // Process new PPT data
            final pptData = json.decode(utf8.decode(response.sublist(32)));
            logDebug("New PPT data: $pptData");

            // Create PptData instance and yield it to the stream
            yield PptWsPush.fromJson(pptData);
          } else {
            // Unknown response
            logDebug(
              "Unknown response received: ${response.map((b) => b.toRadixString(16)).join(' ')}",
            );
          }
        }
      }
    } catch (e) {
      logDebug("WebSocket error: $e");
      _controller.addError(e); // Add error to stream controller
    } finally {
      // Ensure WebSocket connection is closed
      await close(); // Ensure close is called in the finally block
    }
  }

  /// Helper function to check if a response starts with a given pattern.
  bool _startsWith(List<int> data, Uint8List pattern) {
    if (data.length < pattern.length) return false;
    for (int i = 0; i < pattern.length; i++) {
      if (data[i] != pattern[i]) return false;
    }
    return true;
  }

  /// Close the WebSocket connection.
  Future<void> close() async {
    try {
      await _webSocket?.close();
      logDebug("WebSocket connection closed.");
    } catch (e) {
      logDebug("Error closing WebSocket: $e");
    }
  }

  /// Logs a debug message if debugging is enabled.
  void logDebug(String message) {
    if (debug) {
      print(message);
    }
  }
}
