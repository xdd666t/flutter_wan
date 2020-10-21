import 'package:json_annotation/json_annotation.dart';

part 'banner_bean.g.dart';

@JsonSerializable()
class BannerBean extends Object {
  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'errorCode')
  int errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  BannerBean(
    this.data,
    this.errorCode,
    this.errorMsg,
  );

  factory BannerBean.fromJson(Map<String, dynamic> srcJson) =>
      _$BannerBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannerBeanToJson(this);
}

@JsonSerializable()
class Data extends Object {
  @JsonKey(name: 'desc')
  String desc;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'imagePath')
  String imagePath;

  @JsonKey(name: 'isVisible')
  int isVisible;

  @JsonKey(name: 'order')
  int order;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'url')
  String url;

  Data(
    this.desc,
    this.id,
    this.imagePath,
    this.isVisible,
    this.order,
    this.title,
    this.type,
    this.url,
  );

  factory Data.fromJson(Map<String, dynamic> srcJson) =>
      _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
