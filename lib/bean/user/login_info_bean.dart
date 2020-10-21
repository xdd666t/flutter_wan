import 'package:json_annotation/json_annotation.dart';

part 'login_info_bean.g.dart';

@JsonSerializable()
class LoginInfoBean extends Object {
  @JsonKey(name: 'data')
  Data data;

  @JsonKey(name: 'errorCode')
  int errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  LoginInfoBean(
    this.data,
    this.errorCode,
    this.errorMsg,
  );

  factory LoginInfoBean.fromJson(Map<String, dynamic> srcJson) =>
      _$LoginInfoBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LoginInfoBeanToJson(this);
}

@JsonSerializable()
class Data extends Object {
  @JsonKey(name: 'admin')
  bool admin;

  @JsonKey(name: 'chapterTops')
  List<dynamic> chapterTops;

  @JsonKey(name: 'coinCount')
  int coinCount;

  @JsonKey(name: 'collectIds')
  List<dynamic> collectIds;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'nickname')
  String nickname;

  @JsonKey(name: 'password')
  String password;

  @JsonKey(name: 'publicName')
  String publicName;

  @JsonKey(name: 'token')
  String token;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'username')
  String username;

  Data(
    this.admin,
    this.chapterTops,
    this.coinCount,
    this.collectIds,
    this.email,
    this.icon,
    this.id,
    this.nickname,
    this.password,
    this.publicName,
    this.token,
    this.type,
    this.username,
  );

  factory Data.fromJson(Map<String, dynamic> srcJson) =>
      _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
