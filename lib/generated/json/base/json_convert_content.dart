// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_wan/bean/tree/tree_info_item_bean.dart';
import 'package:flutter_wan/generated/json/tree_info_item_bean_helper.dart';
import 'package:flutter_wan/bean/tree/tree_info_bean.dart';
import 'package:flutter_wan/generated/json/tree_info_bean_helper.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';
import 'package:flutter_wan/generated/json/navi_info_bean_helper.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';
import 'package:flutter_wan/generated/json/banner_bean_helper.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';
import 'package:flutter_wan/generated/json/home_article_bean_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case TreeInfoItemBean:
			return treeInfoItemBeanFromJson(data as TreeInfoItemBean, json) as T;			case TreeInfoItemData:
			return treeInfoItemDataFromJson(data as TreeInfoItemData, json) as T;			case TreeInfoItemDataData:
			return treeInfoItemDataDataFromJson(data as TreeInfoItemDataData, json) as T;			case TreeInfoBean:
			return treeInfoBeanFromJson(data as TreeInfoBean, json) as T;			case TreeInfoData:
			return treeInfoDataFromJson(data as TreeInfoData, json) as T;			case TreeInfoDatachild:
			return treeInfoDatachildFromJson(data as TreeInfoDatachild, json) as T;			case NaviInfoBean:
			return naviInfoBeanFromJson(data as NaviInfoBean, json) as T;			case NaviInfoData:
			return naviInfoDataFromJson(data as NaviInfoData, json) as T;			case NaviInfoDataArticle:
			return naviInfoDataArticleFromJson(data as NaviInfoDataArticle, json) as T;			case BannerBean:
			return bannerBeanFromJson(data as BannerBean, json) as T;			case BannerData:
			return bannerDataFromJson(data as BannerData, json) as T;			case HomeArticleBean:
			return homeArticleBeanFromJson(data as HomeArticleBean, json) as T;			case HomeArticleData:
			return homeArticleDataFromJson(data as HomeArticleData, json) as T;			case HomeArticleDataData:
			return homeArticleDataDataFromJson(data as HomeArticleDataData, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case TreeInfoItemBean:
			return treeInfoItemBeanToJson(data as TreeInfoItemBean);			case TreeInfoItemData:
			return treeInfoItemDataToJson(data as TreeInfoItemData);			case TreeInfoItemDataData:
			return treeInfoItemDataDataToJson(data as TreeInfoItemDataData);			case TreeInfoBean:
			return treeInfoBeanToJson(data as TreeInfoBean);			case TreeInfoData:
			return treeInfoDataToJson(data as TreeInfoData);			case TreeInfoDatachild:
			return treeInfoDatachildToJson(data as TreeInfoDatachild);			case NaviInfoBean:
			return naviInfoBeanToJson(data as NaviInfoBean);			case NaviInfoData:
			return naviInfoDataToJson(data as NaviInfoData);			case NaviInfoDataArticle:
			return naviInfoDataArticleToJson(data as NaviInfoDataArticle);			case BannerBean:
			return bannerBeanToJson(data as BannerBean);			case BannerData:
			return bannerDataToJson(data as BannerData);			case HomeArticleBean:
			return homeArticleBeanToJson(data as HomeArticleBean);			case HomeArticleData:
			return homeArticleDataToJson(data as HomeArticleData);			case HomeArticleDataData:
			return homeArticleDataDataToJson(data as HomeArticleDataData);    }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'TreeInfoItemBean':
			return TreeInfoItemBean().fromJson(json);			case 'TreeInfoItemData':
			return TreeInfoItemData().fromJson(json);			case 'TreeInfoItemDataData':
			return TreeInfoItemDataData().fromJson(json);			case 'TreeInfoBean':
			return TreeInfoBean().fromJson(json);			case 'TreeInfoData':
			return TreeInfoData().fromJson(json);			case 'TreeInfoDatachild':
			return TreeInfoDatachild().fromJson(json);			case 'NaviInfoBean':
			return NaviInfoBean().fromJson(json);			case 'NaviInfoData':
			return NaviInfoData().fromJson(json);			case 'NaviInfoDataArticle':
			return NaviInfoDataArticle().fromJson(json);			case 'BannerBean':
			return BannerBean().fromJson(json);			case 'BannerData':
			return BannerData().fromJson(json);			case 'HomeArticleBean':
			return HomeArticleBean().fromJson(json);			case 'HomeArticleData':
			return HomeArticleData().fromJson(json);			case 'HomeArticleDataData':
			return HomeArticleDataData().fromJson(json);    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'TreeInfoItemBean':
			return List<TreeInfoItemBean>();			case 'TreeInfoItemData':
			return List<TreeInfoItemData>();			case 'TreeInfoItemDataData':
			return List<TreeInfoItemDataData>();			case 'TreeInfoBean':
			return List<TreeInfoBean>();			case 'TreeInfoData':
			return List<TreeInfoData>();			case 'TreeInfoDatachild':
			return List<TreeInfoDatachild>();			case 'NaviInfoBean':
			return List<NaviInfoBean>();			case 'NaviInfoData':
			return List<NaviInfoData>();			case 'NaviInfoDataArticle':
			return List<NaviInfoDataArticle>();			case 'BannerBean':
			return List<BannerBean>();			case 'BannerData':
			return List<BannerData>();			case 'HomeArticleBean':
			return List<HomeArticleBean>();			case 'HomeArticleData':
			return List<HomeArticleData>();			case 'HomeArticleDataData':
			return List<HomeArticleDataData>();    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}