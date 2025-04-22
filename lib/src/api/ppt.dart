import 'dart:convert';

import 'package:classroom_live_tools/src/model/search_ppt_response/search_ppt_response.dart';
import 'package:classroom_live_tools/src/model/user_info_simple/user_info_simple.dart';
import 'package:dio/dio.dart';

class SchoolLivePpt {
  late Dio dio;
  late String token;
  final String cookieHeader;

  SchoolLivePpt({required this.cookieHeader, Dio? dio, String? baseUrl}) {
    final token = getTokenAndTenantCodeFromCookie(cookieHeader)['token'];
    if (token == null) {
      throw Exception("Failed to resolve the token, please check the cookie!");
    }
    this.token = token;
    this.dio = dio ?? Dio();
    this.dio.options = this.dio.options.copyWith(
      baseUrl: baseUrl,
      headers: this.dio.options.headers..addAll({
        'User-Agent':
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36',
        'authorization': 'Bearer $token',
        'Cookie': cookieHeader,
      }),
    );
  }

  /// Fetches a list of PPTs for a given course ID and course real ID.
  Future<SearchPptResponse> fetchPptList({
    required int courseId,
    required int courseRealId,
    required int page,
    required int perPage,
  }) async {
    final url = 'pptnote/v1/schedule/search-ppt';

    final response = await dio.get(
      url,
      queryParameters: {
        'course_id': courseId,
        'sub_id': courseRealId,
        'page': page,
        'per_page': perPage,
      },
    );
    return SearchPptResponse.fromJson(response.data);
  }

  /// Fetches basic user info.
  Future<UserInfoSimple> getUserInfo() async {
    final url = 'userapi/v1/infosimple';
    final response = await dio.get(url);
    return UserInfoSimple.fromJson(response.data);
  }

  /// Fetches token and tenant code from cookies.
  // Future<(String, String)> getTokenAndTenantCode() async {
  //   final url =
  //       'casapi/index.php?r=auth/login&forward=https%3A%2F%2Fclassroom.guet.edu.cn%2Fcoursepage&code=OC469928w7HzCFx3aCAKBPvKsxcngL2CyDDcyhW';
  //   final response = await dio.get(
  //     url,
  //     options: Options(followRedirects: false),
  //   );
  //   final setCookies = response.headers['set-cookie'];
  //
  //   String? token;
  //   String? tenantCode;
  //
  //   if (setCookies != null) {
  //     for (final cookie in setCookies) {
  //       if (cookie.contains('_token=')) {
  //         token = extractTokenFromCookie(cookie);
  //       }
  //       if (cookie.contains('tenant_code=')) {
  //         tenantCode = extractTenantCodeFromSetCookie(cookie);
  //       }
  //     }
  //   }

  //   return (token ?? '', tenantCode ?? '');
  // }

  // Extract tenant code from a 'Set-Cookie' header
  static String extractTenantCodeFromSetCookie(String tenantCodeCookieStr) {
    return tenantCodeCookieStr.split(';')[0].split('=')[1];
  }

  // Extract tenant code from a regular cookie string
  static String extractTenantCodeFromCookie(String tenantCodeCookieStr) {
    var decodedStr = Uri.decodeComponent(tenantCodeCookieStr.split("=")[1]);
    var jsonData = jsonDecode(decodedStr);
    return jsonData["tenant_id"];
  }

  // Extract the token from a serialized string (format: i:1;s:<length>:"<token>")
  static String? extractTokenFromCookie(String serializedStr) {
    final regex = RegExp(r'i:1;s:(\d+):"([^"]+)"');
    final match = regex.firstMatch(serializedStr);

    if (match != null) {
      return match.group(2); // Extract the token
    } else {
      return null; // No token found
    }
  }

  static Map<String, String?> getTokenAndTenantCodeFromCookie(
    String cookieHeader,
  ) {
    List<String> cookies = cookieHeader.split(';');
    String? token;
    String? tenantCode;

    for (var cookie in cookies) {
      String decodedCookie = Uri.decodeComponent(cookie.trim());

      if (decodedCookie.contains('_token')) {
        token = extractTokenFromCookie(decodedCookie);
      }
      if (decodedCookie.contains('tenant')) {
        tenantCode = extractTenantCodeFromCookie(decodedCookie);
      }
    }

    return {'token': token, 'tenant_code': tenantCode};
  }
}
