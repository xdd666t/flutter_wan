// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_list_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectListBean _$CollectListBeanFromJson(Map<String, dynamic> json) {
  return CollectListBean(
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    json['errorCode'] as int,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$CollectListBeanToJson(CollectListBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['curPage'] as int,
    (json['datas'] as List)
        ?.map(
            (e) => e == null ? null : Datas.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['offset'] as int,
    json['over'] as bool,
    json['pageCount'] as int,
    json['size'] as int,
    json['total'] as int,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'curPage': instance.curPage,
      'datas': instance.datas,
      'offset': instance.offset,
      'over': instance.over,
      'pageCount': instance.pageCount,
      'size': instance.size,
      'total': instance.total,
    };

Datas _$DatasFromJson(Map<String, dynamic> json) {
  return Datas(
    json['author'] as String,
    json['chapterId'] as int,
    json['chapterName'] as String,
    json['courseId'] as int,
    json['desc'] as String,
    json['envelopePic'] as String,
    json['id'] as int,
    json['link'] as String,
    json['niceDate'] as String,
    json['origin'] as String,
    json['originId'] as int,
    json['publishTime'] as int,
    json['title'] as String,
    json['userId'] as int,
    json['visible'] as int,
    json['zan'] as int,
  );
}

Map<String, dynamic> _$DatasToJson(Datas instance) => <String, dynamic>{
      'author': instance.author,
      'chapterId': instance.chapterId,
      'chapterName': instance.chapterName,
      'courseId': instance.courseId,
      'desc': instance.desc,
      'envelopePic': instance.envelopePic,
      'id': instance.id,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'origin': instance.origin,
      'originId': instance.originId,
      'publishTime': instance.publishTime,
      'title': instance.title,
      'userId': instance.userId,
      'visible': instance.visible,
      'zan': instance.zan,
    };
