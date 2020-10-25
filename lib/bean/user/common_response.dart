import 'package:json_annotation/json_annotation.dart'; 
  
part 'common_response.g.dart';


@JsonSerializable()
  class CommonResponse extends Object {

  @JsonKey(name: 'data')
  String data;

  @JsonKey(name: 'errorCode')
  int errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  CommonResponse(this.data,this.errorCode,this.errorMsg,);

  factory CommonResponse.fromJson(Map<String, dynamic> srcJson) => _$CommonResponseFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommonResponseToJson(this);

}

  
