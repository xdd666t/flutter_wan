import 'package:json_annotation/json_annotation.dart'; 
  
part 'hot_word_bean.g.dart';


@JsonSerializable()
  class HotWordBean extends Object {

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'errorCode')
  int errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  HotWordBean(this.data,this.errorCode,this.errorMsg,);

  factory HotWordBean.fromJson(Map<String, dynamic> srcJson) => _$HotWordBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HotWordBeanToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'link')
  String link;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'order')
  int order;

  @JsonKey(name: 'visible')
  int visible;

  Data(this.id,this.link,this.name,this.order,this.visible,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
