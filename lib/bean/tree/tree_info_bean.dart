import 'package:flutter_wan/generated/json/base/json_convert_content.dart';

class TreeInfoBean with JsonConvert<TreeInfoBean> {
	List<TreeInfoData> data;
	int errorCode;
	String errorMsg;
}

class TreeInfoData with JsonConvert<TreeInfoData> {
	List<TreeInfoDatachild> children;
	int courseId;
	int id;
	String name;
	int order;
	int parentChapterId;
	bool userControlSetTop;
	int visible;
}

class TreeInfoDatachild with JsonConvert<TreeInfoDatachild> {
	List<dynamic> children;
	int courseId;
	int id;
	String name;
	int order;
	int parentChapterId;
	bool userControlSetTop;
	int visible;
}
