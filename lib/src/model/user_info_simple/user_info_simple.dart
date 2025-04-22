import 'package:json_annotation/json_annotation.dart';

part 'user_info_simple.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfoSimple {

  UserInfoSimple(
      {required this.code,
      required this.message,
      required this.params});

  @JsonKey(name: "code", defaultValue: 0)
  int code;

  @JsonKey(name: "message", defaultValue: "")
  String message;

  @JsonKey(name: "params", defaultValue: Params.emptyInstance)
  Params params;


  factory UserInfoSimple.fromJson(Map<String, dynamic> json) => _$UserInfoSimpleFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserInfoSimpleToJson(this);
  
  factory UserInfoSimple.emptyInstance() => UserInfoSimple(code: 0, message: "", params: Params.emptyInstance());
}

@JsonSerializable(explicitToJson: true)
class Myroles {

  Myroles(
      {required this.cmcRole,
      required this.code,
      required this.createdAt,
      required this.description,
      required this.displayName,
      required this.id,
      required this.isdefault,
      required this.status});

  @JsonKey(name: "cmc_role", defaultValue: "")
  String cmcRole;

  @JsonKey(name: "code", defaultValue: "")
  String code;

  @JsonKey(name: "created_at", defaultValue: "")
  String createdAt;

  @JsonKey(name: "description", defaultValue: "")
  String description;

  @JsonKey(name: "display_name", defaultValue: "")
  String displayName;

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "isdefault", defaultValue: 0)
  int isdefault;

  @JsonKey(name: "status", defaultValue: 0)
  int status;


  factory Myroles.fromJson(Map<String, dynamic> json) => _$MyrolesFromJson(json);
  
  Map<String, dynamic> toJson() => _$MyrolesToJson(this);
  
  factory Myroles.emptyInstance() => Myroles(cmcRole: "", code: "", createdAt: "", description: "", displayName: "", id: 0, isdefault: 0, status: 0);
}

@JsonSerializable(explicitToJson: true)
class Roles {

  Roles(
      {required this.cmcRole,
      required this.code,
      required this.createdAt,
      required this.description,
      required this.displayName,
      required this.id,
      required this.status});

  @JsonKey(name: "cmc_role", defaultValue: "")
  String cmcRole;

  @JsonKey(name: "code", defaultValue: "")
  String code;

  @JsonKey(name: "created_at", defaultValue: "")
  String createdAt;

  @JsonKey(name: "description", defaultValue: "")
  String description;

  @JsonKey(name: "display_name", defaultValue: "")
  String displayName;

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "status", defaultValue: 0)
  int status;


  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);
  
  Map<String, dynamic> toJson() => _$RolesToJson(this);
  
  factory Roles.emptyInstance() => Roles(cmcRole: "", code: "", createdAt: "", description: "", displayName: "", id: 0, status: 0);
}

@JsonSerializable(explicitToJson: true)
class Parent {

  Parent(
      {required this.code,
      required this.createdAt,
      required this.displayName,
      required this.id,
      required this.level,
      required this.pcode,
      required this.pid,
      required this.xydm,
      required this.xymc});

  @JsonKey(name: "code", defaultValue: "")
  String code;

  @JsonKey(name: "created_at", defaultValue: "")
  String createdAt;

  @JsonKey(name: "display_name", defaultValue: "")
  String displayName;

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "level", defaultValue: 0)
  int level;

  @JsonKey(name: "pcode", defaultValue: "")
  String pcode;

  @JsonKey(name: "pid", defaultValue: 0)
  int pid;

  @JsonKey(name: "xydm", defaultValue: "")
  String xydm;

  @JsonKey(name: "xymc", defaultValue: "")
  String xymc;


  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
  
  Map<String, dynamic> toJson() => _$ParentToJson(this);
  
  factory Parent.emptyInstance() => Parent(code: "", createdAt: "", displayName: "", id: 0, level: 0, pcode: "", pid: 0, xydm: "", xymc: "");
}

@JsonSerializable(explicitToJson: true)
class Structures {

  Structures(
      {required this.code,
      required this.createdAt,
      required this.displayName,
      required this.id,
      required this.level,
      required this.parent,
      required this.pcode,
      required this.pid,
      required this.xydm,
      required this.xymc});

  @JsonKey(name: "code", defaultValue: "")
  String code;

  @JsonKey(name: "created_at", defaultValue: "")
  String createdAt;

  @JsonKey(name: "display_name", defaultValue: "")
  String displayName;

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "level", defaultValue: 0)
  int level;

  @JsonKey(name: "parent", defaultValue: Parent.emptyInstance)
  Parent parent;

  @JsonKey(name: "pcode", defaultValue: "")
  String pcode;

  @JsonKey(name: "pid", defaultValue: 0)
  int pid;

  @JsonKey(name: "xydm", defaultValue: "")
  String xydm;

  @JsonKey(name: "xymc", defaultValue: "")
  String xymc;


  factory Structures.fromJson(Map<String, dynamic> json) => _$StructuresFromJson(json);
  
  Map<String, dynamic> toJson() => _$StructuresToJson(this);
  
  factory Structures.emptyInstance() => Structures(code: "", createdAt: "", displayName: "", id: 0, level: 0, parent: Parent.emptyInstance(), pcode: "", pid: 0, xydm: "", xymc: "");
}

@JsonSerializable(explicitToJson: true)
class CmcGroup {

  CmcGroup(
      {required this.serviceKeyFull,
      required this.cmcApiDomain,
      required this.cmcApiDomainCookieDomain,
      required this.cmcApiDomainCookieId,
      required this.cmcApiDomainCookieTid,
      required this.cmcApiDomainFull,
      required this.flyPageDomain,
      required this.groupCode,
      required this.groupId,
      required this.loginName,
      required this.pgcDomain,
      required this.productId,
      required this.rpcCmcConsoleDomain,
      required this.rpcCmcLoginDomain});

  @JsonKey(name: "ServiceKeyFull", defaultValue: "")
  String serviceKeyFull;

  @JsonKey(name: "cmcApiDomain", defaultValue: "")
  String cmcApiDomain;

  @JsonKey(name: "cmcApiDomainCookieDomain", defaultValue: "")
  String cmcApiDomainCookieDomain;

  @JsonKey(name: "cmcApiDomainCookieId", defaultValue: "")
  String cmcApiDomainCookieId;

  @JsonKey(name: "cmcApiDomainCookieTid", defaultValue: "")
  String cmcApiDomainCookieTid;

  @JsonKey(name: "cmcApiDomainFull", defaultValue: "")
  String cmcApiDomainFull;

  @JsonKey(name: "flyPageDomain", defaultValue: "")
  String flyPageDomain;

  @JsonKey(name: "group_code", defaultValue: "")
  String groupCode;

  @JsonKey(name: "group_id", defaultValue: "")
  String groupId;

  @JsonKey(name: "login_name", defaultValue: "")
  String loginName;

  @JsonKey(name: "pgcDomain", defaultValue: "")
  String pgcDomain;

  @JsonKey(name: "productId", defaultValue: "")
  String productId;

  @JsonKey(name: "rpcCmcConsoleDomain", defaultValue: "")
  String rpcCmcConsoleDomain;

  @JsonKey(name: "rpcCmcLoginDomain", defaultValue: "")
  String rpcCmcLoginDomain;


  factory CmcGroup.fromJson(Map<String, dynamic> json) => _$CmcGroupFromJson(json);
  
  Map<String, dynamic> toJson() => _$CmcGroupToJson(this);
  
  factory CmcGroup.emptyInstance() => CmcGroup(serviceKeyFull: "", cmcApiDomain: "", cmcApiDomainCookieDomain: "", cmcApiDomainCookieId: "", cmcApiDomainCookieTid: "", cmcApiDomainFull: "", flyPageDomain: "", groupCode: "", groupId: "", loginName: "", pgcDomain: "", productId: "", rpcCmcConsoleDomain: "", rpcCmcLoginDomain: "");
}

@JsonSerializable(explicitToJson: true)
class CmsSync {

  CmsSync(
      {required this.groupId,
      required this.open,
      required this.roleIds});

  @JsonKey(name: "group_id", defaultValue: "")
  String groupId;

  @JsonKey(name: "open", defaultValue: "")
  String open;

  @JsonKey(name: "role_ids", defaultValue: [])
  List<String> roleIds;


  factory CmsSync.fromJson(Map<String, dynamic> json) => _$CmsSyncFromJson(json);
  
  Map<String, dynamic> toJson() => _$CmsSyncToJson(this);
  
  factory CmsSync.emptyInstance() => CmsSync(groupId: "", open: "", roleIds: []);
}

@JsonSerializable(explicitToJson: true)
class Course {

  Course(
      {required this.analyzerDelay,
      required this.analyzerInterval,
      required this.openaudit,
      required this.rtcAbroadSimple,
      required this.rtcInteract,
      required this.rtcMaxStreams,
      required this.rtcScreenType,
      required this.rtcStudentStream});

  @JsonKey(name: "analyzer_delay", defaultValue: 0)
  int analyzerDelay;

  @JsonKey(name: "analyzer_interval", defaultValue: 0)
  int analyzerInterval;

  @JsonKey(name: "openaudit", defaultValue: 0)
  int openaudit;

  @JsonKey(name: "rtcAbroadSimple", defaultValue: 0)
  int rtcAbroadSimple;

  @JsonKey(name: "rtcInteract", defaultValue: 0)
  int rtcInteract;

  @JsonKey(name: "rtcMaxStreams", defaultValue: 0)
  int rtcMaxStreams;

  @JsonKey(name: "rtcScreenType", defaultValue: "")
  String rtcScreenType;

  @JsonKey(name: "rtcStudentStream", defaultValue: 0)
  int rtcStudentStream;


  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
  
  Map<String, dynamic> toJson() => _$CourseToJson(this);
  
  factory Course.emptyInstance() => Course(analyzerDelay: 0, analyzerInterval: 0, openaudit: 0, rtcAbroadSimple: 0, rtcInteract: 0, rtcMaxStreams: 0, rtcScreenType: "", rtcStudentStream: 0);
}

@JsonSerializable(explicitToJson: true)
class CourseWatermark {

  CourseWatermark(
      {required this.opacity,
      required this.open,
      required this.style});

  @JsonKey(name: "opacity", defaultValue: 0)
  int opacity;

  @JsonKey(name: "open", defaultValue: 0)
  int open;

  @JsonKey(name: "style", defaultValue: "")
  String style;


  factory CourseWatermark.fromJson(Map<String, dynamic> json) => _$CourseWatermarkFromJson(json);
  
  Map<String, dynamic> toJson() => _$CourseWatermarkToJson(this);
  
  factory CourseWatermark.emptyInstance() => CourseWatermark(opacity: 0, open: 0, style: "");
}

@JsonSerializable(explicitToJson: true)
class HomepageModules {

  HomepageModules(
      {required this.default_,
      required this.order});

  @JsonKey(name: "default", defaultValue: "")
  String default_;

  @JsonKey(name: "order", defaultValue: "")
  String order;


  factory HomepageModules.fromJson(Map<String, dynamic> json) => _$HomepageModulesFromJson(json);
  
  Map<String, dynamic> toJson() => _$HomepageModulesToJson(this);
  
  factory HomepageModules.emptyInstance() => HomepageModules(default_: "", order: "");
}

@JsonSerializable(explicitToJson: true)
class Data {

  Data(
      {required this.cmcGroup,
      required this.cmsSync,
      required this.course,
      required this.courseWatermark,
      required this.homepageModules,
      required this.hudongTips,
      required this.hudongTipsAdvance,
      required this.playerVersion,
      required this.regAllow,
      required this.zhiboketangAdvance,
      required this.zhiboketangDelay,
      required this.zhiboketangShowOrigin});

  @JsonKey(name: "cmcGroup", defaultValue: CmcGroup.emptyInstance)
  CmcGroup cmcGroup;

  @JsonKey(name: "cmsSync", defaultValue: CmsSync.emptyInstance)
  CmsSync cmsSync;

  @JsonKey(name: "course", defaultValue: Course.emptyInstance)
  Course course;

  @JsonKey(name: "courseWatermark", defaultValue: CourseWatermark.emptyInstance)
  CourseWatermark courseWatermark;

  @JsonKey(name: "homepageModules", defaultValue: HomepageModules.emptyInstance)
  HomepageModules homepageModules;

  @JsonKey(name: "hudongTips", defaultValue: 0)
  int hudongTips;

  @JsonKey(name: "hudongTipsAdvance", defaultValue: 0)
  int hudongTipsAdvance;

  @JsonKey(name: "playerVersion", defaultValue: 0)
  int playerVersion;

  @JsonKey(name: "reg_allow", defaultValue: "")
  String regAllow;

  @JsonKey(name: "zhiboketangAdvance", defaultValue: 0)
  int zhiboketangAdvance;

  @JsonKey(name: "zhiboketangDelay", defaultValue: 0)
  int zhiboketangDelay;

  @JsonKey(name: "zhiboketangShowOrigin", defaultValue: 0)
  int zhiboketangShowOrigin;


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  
  Map<String, dynamic> toJson() => _$DataToJson(this);
  
  factory Data.emptyInstance() => Data(cmcGroup: CmcGroup.emptyInstance(), cmsSync: CmsSync.emptyInstance(), course: Course.emptyInstance(), courseWatermark: CourseWatermark.emptyInstance(), homepageModules: HomepageModules.emptyInstance(), hudongTips: 0, hudongTipsAdvance: 0, playerVersion: 0, regAllow: "", zhiboketangAdvance: 0, zhiboketangDelay: 0, zhiboketangShowOrigin: 0);
}

@JsonSerializable(explicitToJson: true)
class Tenant {

  Tenant(
      {required this.data,
      required this.expires,
      required this.h5Url,
      required this.id,
      required this.isCloud,
      required this.labName,
      required this.logo,
      required this.tenantCode,
      required this.tenantName,
      required this.url});

  @JsonKey(name: "data", defaultValue: Data.emptyInstance)
  Data data;

  @JsonKey(name: "expires", defaultValue: 0)
  int expires;

  @JsonKey(name: "h5_url", defaultValue: "")
  String h5Url;

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "is_cloud", defaultValue: "")
  String isCloud;

  @JsonKey(name: "lab_name", defaultValue: "")
  String labName;

  @JsonKey(name: "logo", defaultValue: "")
  String logo;

  @JsonKey(name: "tenant_code", defaultValue: "")
  String tenantCode;

  @JsonKey(name: "tenant_name", defaultValue: "")
  String tenantName;

  @JsonKey(name: "url", defaultValue: "")
  String url;


  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);
  
  Map<String, dynamic> toJson() => _$TenantToJson(this);
  
  factory Tenant.emptyInstance() => Tenant(data: Data.emptyInstance(), expires: 0, h5Url: "", id: 0, isCloud: "", labName: "", logo: "", tenantCode: "", tenantName: "", url: "");
}

@JsonSerializable(explicitToJson: true)
class Tutor {

  Tutor(
      {required this.myCourse,
      required this.todayCourse});

  @JsonKey(name: "myCourse", defaultValue: false)
  bool myCourse;

  @JsonKey(name: "todayCourse", defaultValue: false)
  bool todayCourse;


  factory Tutor.fromJson(Map<String, dynamic> json) => _$TutorFromJson(json);
  
  Map<String, dynamic> toJson() => _$TutorToJson(this);
  
  factory Tutor.emptyInstance() => Tutor(myCourse: false, todayCourse: false);
}

@JsonSerializable(explicitToJson: true)
class Params {

  Params(
      {required this.sFZH,
      required this.account,
      required this.avatar,
      required this.bindcode,
      required this.createdAt,
      required this.currentRole,
      required this.defaultRole,
      required this.disabled,
      required this.eduLevel,
      required this.email,
      required this.expire,
      required this.faceAuth,
      required this.faceIdNeed,
      required this.icCard,
      required this.id,
      required this.info,
      required this.iptvBindcode,
      required this.myroles,
      required this.openid,
      required this.payStatus,
      required this.phone,
      required this.points,
      required this.realname,
      required this.roles,
      required this.space,
      required this.structures,
      required this.tenant,
      required this.tenantId,
      required this.tutor,
      required this.type,
      required this.usedSpace,
      required this.verifyphone,
      required this.webrtc});

  @JsonKey(name: "SFZH", defaultValue: "")
  String sFZH;

  @JsonKey(name: "account", defaultValue: "")
  String account;

  @JsonKey(name: "avatar", defaultValue: "")
  String avatar;

  @JsonKey(name: "bindcode", defaultValue: "")
  String bindcode;

  @JsonKey(name: "created_at", defaultValue: "")
  String createdAt;

  @JsonKey(name: "currentRole", defaultValue: "")
  String currentRole;

  @JsonKey(name: "default_role", defaultValue: "")
  String defaultRole;

  @JsonKey(name: "disabled", defaultValue: 0)
  int disabled;

  @JsonKey(name: "edu_level", defaultValue: "")
  String eduLevel;

  @JsonKey(name: "email", defaultValue: "")
  String email;

  @JsonKey(name: "expire", defaultValue: 0)
  int expire;

  @JsonKey(name: "faceAuth", defaultValue: false)
  bool faceAuth;

  @JsonKey(name: "faceIdNeed", defaultValue: "")
  String faceIdNeed;

  @JsonKey(name: "icCard", defaultValue: "")
  String icCard;

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "info", defaultValue: "")
  String info;

  @JsonKey(name: "iptv_bindcode", defaultValue: "")
  String iptvBindcode;

  @JsonKey(name: "myroles", defaultValue: [])
  List<Myroles> myroles;

  @JsonKey(name: "openid", defaultValue: "")
  String openid;

  @JsonKey(name: "pay_status", defaultValue: 0)
  int payStatus;

  @JsonKey(name: "phone", defaultValue: "")
  String phone;

  @JsonKey(name: "points", defaultValue: 0)
  int points;

  @JsonKey(name: "realname", defaultValue: "")
  String realname;

  @JsonKey(name: "roles", defaultValue: [])
  List<Roles> roles;

  @JsonKey(name: "space", defaultValue: 0)
  int space;

  @JsonKey(name: "structures", defaultValue: [])
  List<Structures> structures;

  @JsonKey(name: "tenant", defaultValue: Tenant.emptyInstance)
  Tenant tenant;

  @JsonKey(name: "tenant_id", defaultValue: 0)
  int tenantId;

  @JsonKey(name: "tutor", defaultValue: Tutor.emptyInstance)
  Tutor tutor;

  @JsonKey(name: "type", defaultValue: 0)
  int type;

  @JsonKey(name: "used_space", defaultValue: 0)
  int usedSpace;

  @JsonKey(name: "verifyphone", defaultValue: 0)
  int verifyphone;

  @JsonKey(name: "webrtc", defaultValue: "")
  String webrtc;


  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);
  
  Map<String, dynamic> toJson() => _$ParamsToJson(this);
  
  factory Params.emptyInstance() => Params(sFZH: "", account: "", avatar: "", bindcode: "", createdAt: "", currentRole: "", defaultRole: "", disabled: 0, eduLevel: "", email: "", expire: 0, faceAuth: false, faceIdNeed: "", icCard: "", id: 0, info: "", iptvBindcode: "", myroles: [], openid: "", payStatus: 0, phone: "", points: 0, realname: "", roles: [], space: 0, structures: [], tenant: Tenant.emptyInstance(), tenantId: 0, tutor: Tutor.emptyInstance(), type: 0, usedSpace: 0, verifyphone: 0, webrtc: "");
}


