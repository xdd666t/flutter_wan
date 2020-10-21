import 'package:json_annotation/json_annotation.dart'; 
  
part 'project_bean.g.dart';


@JsonSerializable()
  class ProjectBean extends Object {

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'errorCode')
  int errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  ProjectBean(this.data,this.errorCode,this.errorMsg,);

  factory ProjectBean.fromJson(Map<String, dynamic> srcJson) => _$ProjectBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProjectBeanToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'children')
  List<dynamic> children;

  @JsonKey(name: 'courseId')
  int courseId;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'order')
  int order;

  @JsonKey(name: 'parentChapterId')
  int parentChapterId;

  @JsonKey(name: 'userControlSetTop')
  bool userControlSetTop;

  @JsonKey(name: 'visible')
  int visible;

  Data(this.children,this.courseId,this.id,this.name,this.order,this.parentChapterId,this.userControlSetTop,this.visible,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
