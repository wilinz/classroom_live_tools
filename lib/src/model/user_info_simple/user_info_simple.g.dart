// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_simple.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoSimple _$UserInfoSimpleFromJson(Map<String, dynamic> json) =>
    UserInfoSimple(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      params: json['params'] == null
          ? Params.emptyInstance()
          : Params.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserInfoSimpleToJson(UserInfoSimple instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'params': instance.params.toJson(),
    };

Myroles _$MyrolesFromJson(Map<String, dynamic> json) => Myroles(
      cmcRole: json['cmc_role'] as String? ?? '',
      code: json['code'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      description: json['description'] as String? ?? '',
      displayName: json['display_name'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      isdefault: (json['isdefault'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MyrolesToJson(Myroles instance) => <String, dynamic>{
      'cmc_role': instance.cmcRole,
      'code': instance.code,
      'created_at': instance.createdAt,
      'description': instance.description,
      'display_name': instance.displayName,
      'id': instance.id,
      'isdefault': instance.isdefault,
      'status': instance.status,
    };

Roles _$RolesFromJson(Map<String, dynamic> json) => Roles(
      cmcRole: json['cmc_role'] as String? ?? '',
      code: json['code'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      description: json['description'] as String? ?? '',
      displayName: json['display_name'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RolesToJson(Roles instance) => <String, dynamic>{
      'cmc_role': instance.cmcRole,
      'code': instance.code,
      'created_at': instance.createdAt,
      'description': instance.description,
      'display_name': instance.displayName,
      'id': instance.id,
      'status': instance.status,
    };

Parent _$ParentFromJson(Map<String, dynamic> json) => Parent(
      code: json['code'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      displayName: json['display_name'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 0,
      pcode: json['pcode'] as String? ?? '',
      pid: (json['pid'] as num?)?.toInt() ?? 0,
      xydm: json['xydm'] as String? ?? '',
      xymc: json['xymc'] as String? ?? '',
    );

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'code': instance.code,
      'created_at': instance.createdAt,
      'display_name': instance.displayName,
      'id': instance.id,
      'level': instance.level,
      'pcode': instance.pcode,
      'pid': instance.pid,
      'xydm': instance.xydm,
      'xymc': instance.xymc,
    };

Structures _$StructuresFromJson(Map<String, dynamic> json) => Structures(
      code: json['code'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      displayName: json['display_name'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 0,
      parent: json['parent'] == null
          ? Parent.emptyInstance()
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
      pcode: json['pcode'] as String? ?? '',
      pid: (json['pid'] as num?)?.toInt() ?? 0,
      xydm: json['xydm'] as String? ?? '',
      xymc: json['xymc'] as String? ?? '',
    );

Map<String, dynamic> _$StructuresToJson(Structures instance) =>
    <String, dynamic>{
      'code': instance.code,
      'created_at': instance.createdAt,
      'display_name': instance.displayName,
      'id': instance.id,
      'level': instance.level,
      'parent': instance.parent.toJson(),
      'pcode': instance.pcode,
      'pid': instance.pid,
      'xydm': instance.xydm,
      'xymc': instance.xymc,
    };

CmcGroup _$CmcGroupFromJson(Map<String, dynamic> json) => CmcGroup(
      serviceKeyFull: json['ServiceKeyFull'] as String? ?? '',
      cmcApiDomain: json['cmcApiDomain'] as String? ?? '',
      cmcApiDomainCookieDomain:
          json['cmcApiDomainCookieDomain'] as String? ?? '',
      cmcApiDomainCookieId: json['cmcApiDomainCookieId'] as String? ?? '',
      cmcApiDomainCookieTid: json['cmcApiDomainCookieTid'] as String? ?? '',
      cmcApiDomainFull: json['cmcApiDomainFull'] as String? ?? '',
      flyPageDomain: json['flyPageDomain'] as String? ?? '',
      groupCode: json['group_code'] as String? ?? '',
      groupId: json['group_id'] as String? ?? '',
      loginName: json['login_name'] as String? ?? '',
      pgcDomain: json['pgcDomain'] as String? ?? '',
      productId: json['productId'] as String? ?? '',
      rpcCmcConsoleDomain: json['rpcCmcConsoleDomain'] as String? ?? '',
      rpcCmcLoginDomain: json['rpcCmcLoginDomain'] as String? ?? '',
    );

Map<String, dynamic> _$CmcGroupToJson(CmcGroup instance) => <String, dynamic>{
      'ServiceKeyFull': instance.serviceKeyFull,
      'cmcApiDomain': instance.cmcApiDomain,
      'cmcApiDomainCookieDomain': instance.cmcApiDomainCookieDomain,
      'cmcApiDomainCookieId': instance.cmcApiDomainCookieId,
      'cmcApiDomainCookieTid': instance.cmcApiDomainCookieTid,
      'cmcApiDomainFull': instance.cmcApiDomainFull,
      'flyPageDomain': instance.flyPageDomain,
      'group_code': instance.groupCode,
      'group_id': instance.groupId,
      'login_name': instance.loginName,
      'pgcDomain': instance.pgcDomain,
      'productId': instance.productId,
      'rpcCmcConsoleDomain': instance.rpcCmcConsoleDomain,
      'rpcCmcLoginDomain': instance.rpcCmcLoginDomain,
    };

CmsSync _$CmsSyncFromJson(Map<String, dynamic> json) => CmsSync(
      groupId: json['group_id'] as String? ?? '',
      open: json['open'] as String? ?? '',
      roleIds: (json['role_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CmsSyncToJson(CmsSync instance) => <String, dynamic>{
      'group_id': instance.groupId,
      'open': instance.open,
      'role_ids': instance.roleIds,
    };

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      analyzerDelay: (json['analyzer_delay'] as num?)?.toInt() ?? 0,
      analyzerInterval: (json['analyzer_interval'] as num?)?.toInt() ?? 0,
      openaudit: (json['openaudit'] as num?)?.toInt() ?? 0,
      rtcAbroadSimple: (json['rtcAbroadSimple'] as num?)?.toInt() ?? 0,
      rtcInteract: (json['rtcInteract'] as num?)?.toInt() ?? 0,
      rtcMaxStreams: (json['rtcMaxStreams'] as num?)?.toInt() ?? 0,
      rtcScreenType: json['rtcScreenType'] as String? ?? '',
      rtcStudentStream: (json['rtcStudentStream'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'analyzer_delay': instance.analyzerDelay,
      'analyzer_interval': instance.analyzerInterval,
      'openaudit': instance.openaudit,
      'rtcAbroadSimple': instance.rtcAbroadSimple,
      'rtcInteract': instance.rtcInteract,
      'rtcMaxStreams': instance.rtcMaxStreams,
      'rtcScreenType': instance.rtcScreenType,
      'rtcStudentStream': instance.rtcStudentStream,
    };

CourseWatermark _$CourseWatermarkFromJson(Map<String, dynamic> json) =>
    CourseWatermark(
      opacity: (json['opacity'] as num?)?.toInt() ?? 0,
      open: (json['open'] as num?)?.toInt() ?? 0,
      style: json['style'] as String? ?? '',
    );

Map<String, dynamic> _$CourseWatermarkToJson(CourseWatermark instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'open': instance.open,
      'style': instance.style,
    };

HomepageModules _$HomepageModulesFromJson(Map<String, dynamic> json) =>
    HomepageModules(
      default_: json['default'] as String? ?? '',
      order: json['order'] as String? ?? '',
    );

Map<String, dynamic> _$HomepageModulesToJson(HomepageModules instance) =>
    <String, dynamic>{
      'default': instance.default_,
      'order': instance.order,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      cmcGroup: json['cmcGroup'] == null
          ? CmcGroup.emptyInstance()
          : CmcGroup.fromJson(json['cmcGroup'] as Map<String, dynamic>),
      cmsSync: json['cmsSync'] == null
          ? CmsSync.emptyInstance()
          : CmsSync.fromJson(json['cmsSync'] as Map<String, dynamic>),
      course: json['course'] == null
          ? Course.emptyInstance()
          : Course.fromJson(json['course'] as Map<String, dynamic>),
      courseWatermark: json['courseWatermark'] == null
          ? CourseWatermark.emptyInstance()
          : CourseWatermark.fromJson(
              json['courseWatermark'] as Map<String, dynamic>),
      homepageModules: json['homepageModules'] == null
          ? HomepageModules.emptyInstance()
          : HomepageModules.fromJson(
              json['homepageModules'] as Map<String, dynamic>),
      hudongTips: (json['hudongTips'] as num?)?.toInt() ?? 0,
      hudongTipsAdvance: (json['hudongTipsAdvance'] as num?)?.toInt() ?? 0,
      playerVersion: (json['playerVersion'] as num?)?.toInt() ?? 0,
      regAllow: json['reg_allow'] as String? ?? '',
      zhiboketangAdvance: (json['zhiboketangAdvance'] as num?)?.toInt() ?? 0,
      zhiboketangDelay: (json['zhiboketangDelay'] as num?)?.toInt() ?? 0,
      zhiboketangShowOrigin:
          (json['zhiboketangShowOrigin'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'cmcGroup': instance.cmcGroup.toJson(),
      'cmsSync': instance.cmsSync.toJson(),
      'course': instance.course.toJson(),
      'courseWatermark': instance.courseWatermark.toJson(),
      'homepageModules': instance.homepageModules.toJson(),
      'hudongTips': instance.hudongTips,
      'hudongTipsAdvance': instance.hudongTipsAdvance,
      'playerVersion': instance.playerVersion,
      'reg_allow': instance.regAllow,
      'zhiboketangAdvance': instance.zhiboketangAdvance,
      'zhiboketangDelay': instance.zhiboketangDelay,
      'zhiboketangShowOrigin': instance.zhiboketangShowOrigin,
    };

Tenant _$TenantFromJson(Map<String, dynamic> json) => Tenant(
      data: json['data'] == null
          ? Data.emptyInstance()
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      expires: (json['expires'] as num?)?.toInt() ?? 0,
      h5Url: json['h5_url'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      isCloud: json['is_cloud'] as String? ?? '',
      labName: json['lab_name'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      tenantCode: json['tenant_code'] as String? ?? '',
      tenantName: json['tenant_name'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$TenantToJson(Tenant instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'expires': instance.expires,
      'h5_url': instance.h5Url,
      'id': instance.id,
      'is_cloud': instance.isCloud,
      'lab_name': instance.labName,
      'logo': instance.logo,
      'tenant_code': instance.tenantCode,
      'tenant_name': instance.tenantName,
      'url': instance.url,
    };

Tutor _$TutorFromJson(Map<String, dynamic> json) => Tutor(
      myCourse: json['myCourse'] as bool? ?? false,
      todayCourse: json['todayCourse'] as bool? ?? false,
    );

Map<String, dynamic> _$TutorToJson(Tutor instance) => <String, dynamic>{
      'myCourse': instance.myCourse,
      'todayCourse': instance.todayCourse,
    };

Params _$ParamsFromJson(Map<String, dynamic> json) => Params(
      sFZH: json['SFZH'] as String? ?? '',
      account: json['account'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      bindcode: json['bindcode'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      currentRole: json['currentRole'] as String? ?? '',
      defaultRole: json['default_role'] as String? ?? '',
      disabled: (json['disabled'] as num?)?.toInt() ?? 0,
      eduLevel: json['edu_level'] as String? ?? '',
      email: json['email'] as String? ?? '',
      expire: (json['expire'] as num?)?.toInt() ?? 0,
      faceAuth: json['faceAuth'] as bool? ?? false,
      faceIdNeed: json['faceIdNeed'] as String? ?? '',
      icCard: json['icCard'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      info: json['info'] as String? ?? '',
      iptvBindcode: json['iptv_bindcode'] as String? ?? '',
      myroles: (json['myroles'] as List<dynamic>?)
              ?.map((e) => Myroles.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      openid: json['openid'] as String? ?? '',
      payStatus: (json['pay_status'] as num?)?.toInt() ?? 0,
      phone: json['phone'] as String? ?? '',
      points: (json['points'] as num?)?.toInt() ?? 0,
      realname: json['realname'] as String? ?? '',
      roles: (json['roles'] as List<dynamic>?)
              ?.map((e) => Roles.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      space: (json['space'] as num?)?.toInt() ?? 0,
      structures: (json['structures'] as List<dynamic>?)
              ?.map((e) => Structures.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tenant: json['tenant'] == null
          ? Tenant.emptyInstance()
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      tenantId: (json['tenant_id'] as num?)?.toInt() ?? 0,
      tutor: json['tutor'] == null
          ? Tutor.emptyInstance()
          : Tutor.fromJson(json['tutor'] as Map<String, dynamic>),
      type: (json['type'] as num?)?.toInt() ?? 0,
      usedSpace: (json['used_space'] as num?)?.toInt() ?? 0,
      verifyphone: (json['verifyphone'] as num?)?.toInt() ?? 0,
      webrtc: json['webrtc'] as String? ?? '',
    );

Map<String, dynamic> _$ParamsToJson(Params instance) => <String, dynamic>{
      'SFZH': instance.sFZH,
      'account': instance.account,
      'avatar': instance.avatar,
      'bindcode': instance.bindcode,
      'created_at': instance.createdAt,
      'currentRole': instance.currentRole,
      'default_role': instance.defaultRole,
      'disabled': instance.disabled,
      'edu_level': instance.eduLevel,
      'email': instance.email,
      'expire': instance.expire,
      'faceAuth': instance.faceAuth,
      'faceIdNeed': instance.faceIdNeed,
      'icCard': instance.icCard,
      'id': instance.id,
      'info': instance.info,
      'iptv_bindcode': instance.iptvBindcode,
      'myroles': instance.myroles.map((e) => e.toJson()).toList(),
      'openid': instance.openid,
      'pay_status': instance.payStatus,
      'phone': instance.phone,
      'points': instance.points,
      'realname': instance.realname,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'space': instance.space,
      'structures': instance.structures.map((e) => e.toJson()).toList(),
      'tenant': instance.tenant.toJson(),
      'tenant_id': instance.tenantId,
      'tutor': instance.tutor.toJson(),
      'type': instance.type,
      'used_space': instance.usedSpace,
      'verifyphone': instance.verifyphone,
      'webrtc': instance.webrtc,
    };
