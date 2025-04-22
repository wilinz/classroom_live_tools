// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ppt_ws_push.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PptWsPush _$PptWsPushFromJson(Map<String, dynamic> json) => PptWsPush(
      type: json['type'] as String? ?? '',
      courseId: json['course_id'] as String? ?? '',
      subId: json['sub_id'] as String? ?? '',
      pptId: (json['ppt_id'] as num?)?.toInt() ?? 0,
      ppt: json['ppt'] == null
          ? Ppt.emptyInstance()
          : Ppt.fromJson(json['ppt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PptWsPushToJson(PptWsPush instance) => <String, dynamic>{
      'type': instance.type,
      'course_id': instance.courseId,
      'sub_id': instance.subId,
      'ppt_id': instance.pptId,
      'ppt': instance.ppt.toJson(),
    };

Ppt _$PptFromJson(Map<String, dynamic> json) => Ppt(
      detecttype: json['detecttype'] as String? ?? '',
      isKey: json['is_key'] as bool? ?? false,
      pptimgurl: json['pptimgurl'] as String? ?? '',
      status: json['status'] as String? ?? '',
      taskid: json['taskid'] as String? ?? '',
      pptthumb: json['pptthumb'] as String? ?? '',
      created: json['created'] as String? ?? '',
    );

Map<String, dynamic> _$PptToJson(Ppt instance) => <String, dynamic>{
      'detecttype': instance.detecttype,
      'is_key': instance.isKey,
      'pptimgurl': instance.pptimgurl,
      'status': instance.status,
      'taskid': instance.taskid,
      'pptthumb': instance.pptthumb,
      'created': instance.created,
    };
