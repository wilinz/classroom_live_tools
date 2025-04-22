import 'package:json_annotation/json_annotation.dart';

part 'ppt_ws_push.g.dart';

@JsonSerializable(explicitToJson: true)
class PptWsPush {

  PptWsPush(
      {required this.type,
      required this.courseId,
      required this.subId,
      required this.pptId,
      required this.ppt});

  @JsonKey(name: "type", defaultValue: "")
  String type;

  @JsonKey(name: "course_id", defaultValue: "")
  String courseId;

  @JsonKey(name: "sub_id", defaultValue: "")
  String subId;

  @JsonKey(name: "ppt_id", defaultValue: 0)
  int pptId;

  @JsonKey(name: "ppt", defaultValue: Ppt.emptyInstance)
  Ppt ppt;


  factory PptWsPush.fromJson(Map<String, dynamic> json) => _$PptWsPushFromJson(json);
  
  Map<String, dynamic> toJson() => _$PptWsPushToJson(this);
  
  factory PptWsPush.emptyInstance() => PptWsPush(type: "", courseId: "", subId: "", pptId: 0, ppt: Ppt.emptyInstance());
}

@JsonSerializable(explicitToJson: true)
class Ppt {

  Ppt(
      {required this.detecttype,
      required this.isKey,
      required this.pptimgurl,
      required this.status,
      required this.taskid,
      required this.pptthumb,
      required this.created});

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


  factory Ppt.fromJson(Map<String, dynamic> json) => _$PptFromJson(json);
  
  Map<String, dynamic> toJson() => _$PptToJson(this);
  
  factory Ppt.emptyInstance() => Ppt(detecttype: "", isKey: false, pptimgurl: "", status: "", taskid: "", pptthumb: "", created: "");
}


