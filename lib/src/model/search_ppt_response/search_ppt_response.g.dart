// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_ppt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPptResponse _$SearchPptResponseFromJson(Map<String, dynamic> json) =>
    SearchPptResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => PptItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      msg: json['msg'] as String? ?? '',
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SearchPptResponseToJson(SearchPptResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'list': instance.list.map((e) => e.toJson()).toList(),
      'msg': instance.msg,
      'total': instance.total,
    };

PptContent _$PptContentFromJson(Map<String, dynamic> json) => PptContent(
      detecttype: json['detecttype'] as String? ?? '',
      isKey: json['is_key'] as bool? ?? false,
      pptimgurl: json['pptimgurl'] as String? ?? '',
      status: json['status'] as String? ?? '',
      taskid: json['taskid'] as String? ?? '',
      pptthumb: json['pptthumb'] as String? ?? '',
      created: json['created'] as String? ?? '',
    );

Map<String, dynamic> _$PptContentToJson(PptContent instance) =>
    <String, dynamic>{
      'detecttype': instance.detecttype,
      'is_key': instance.isKey,
      'pptimgurl': instance.pptimgurl,
      'status': instance.status,
      'taskid': instance.taskid,
      'pptthumb': instance.pptthumb,
      'created': instance.created,
    };

PptItem _$PptItemFromJson(Map<String, dynamic> json) => PptItem(
      content: json['content'] == null
          ? PptContent.emptyInstance()
          : PptContent.fromJson(json['content'] as Map<String, dynamic>),
      courseId: (json['course_id'] as num?)?.toInt() ?? 0,
      createTime: json['create_time'] as String? ?? '',
      createdSec: (json['created_sec'] as num?)?.toInt() ?? 0,
      default_: (json['default'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      subId: (json['sub_id'] as num?)?.toInt() ?? 0,
      updateTime: json['update_time'] as String? ?? '',
    );

Map<String, dynamic> _$PptItemToJson(PptItem instance) => <String, dynamic>{
      'content': instance.content.toJson(),
      'course_id': instance.courseId,
      'create_time': instance.createTime,
      'created_sec': instance.createdSec,
      'default': instance.default_,
      'id': instance.id,
      'sub_id': instance.subId,
      'update_time': instance.updateTime,
    };
