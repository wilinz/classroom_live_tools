import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'search_ppt_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchPptResponse {
  SearchPptResponse({
    required this.code,
    required this.list,
    required this.msg,
    required this.total,
  });

  @JsonKey(name: "code", defaultValue: 0)
  int code;

  @JsonKey(name: "list", defaultValue: [])
  List<PptItem> list;

  @JsonKey(name: "msg", defaultValue: "")
  String msg;

  @JsonKey(name: "total", defaultValue: 0)
  int total;

  factory SearchPptResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchPptResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPptResponseToJson(this);

  factory SearchPptResponse.emptyInstance() =>
      SearchPptResponse(code: 0, list: [], msg: "", total: 0);
}

@JsonSerializable(explicitToJson: true)
class PptContent {
  PptContent({
    required this.detecttype,
    required this.isKey,
    required this.pptimgurl,
    required this.status,
    required this.taskid,
    required this.pptthumb,
    required this.created,
  });

  @JsonKey(name: "detecttype", defaultValue: "")
  String detecttype;

  @JsonKey(name: "is_key", defaultValue: false)
  bool isKey;

  @JsonKey(name: "pptimgurl", defaultValue: "")
  String pptimgurl;

  @JsonKey(name: "status", defaultValue: "")
  String status;

  @JsonKey(name: "taskid", defaultValue: "")
  String taskid;

  @JsonKey(name: "pptthumb", defaultValue: "")
  String pptthumb;

  @JsonKey(name: "created", defaultValue: "")
  String created;

  factory PptContent.fromJson(Map<String, dynamic> json) =>
      _$PptContentFromJson(json);

  Map<String, dynamic> toJson() => _$PptContentToJson(this);

  factory PptContent.emptyInstance() => PptContent(
    detecttype: "",
    isKey: false,
    pptimgurl: "",
    status: "",
    taskid: "",
    pptthumb: "",
    created: "",
  );
}

PptContent _parsePptContent(String jsonText) =>
    PptContent.fromJson(jsonDecode(jsonText));

@JsonSerializable(explicitToJson: true)
class PptItem {
  PptItem({
    required this.content,
    required this.courseId,
    required this.createTime,
    required this.createdSec,
    required this.default_,
    required this.id,
    required this.subId,
    required this.updateTime,
  });

  @JsonKey(
    name: "content",
    defaultValue: PptContent.emptyInstance,
    fromJson: _parsePptContent,
  )
  PptContent content;

  @JsonKey(name: "course_id", defaultValue: 0)
  int courseId;

  @JsonKey(name: "create_time", defaultValue: "")
  String createTime;

  @JsonKey(name: "created_sec", defaultValue: 0)
  int createdSec;

  @JsonKey(name: "default", defaultValue: 0)
  int default_;

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "sub_id", defaultValue: 0)
  int subId;

  @JsonKey(name: "update_time", defaultValue: "")
  String updateTime;

  factory PptItem.fromJson(Map<String, dynamic> json) =>
      _$PptItemFromJson(json);

  Map<String, dynamic> toJson() => _$PptItemToJson(this);

  factory PptItem.emptyInstance() => PptItem(
    content: PptContent.emptyInstance(),
    courseId: 0,
    createTime: "",
    createdSec: 0,
    default_: 0,
    id: 0,
    subId: 0,
    updateTime: "",
  );
}
