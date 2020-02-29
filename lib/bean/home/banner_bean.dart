import 'package:flutter_wan/generated/json/base/json_convert_content.dart';

class BannerBean with JsonConvert<BannerBean> {
	List<BannerData> data;
	int errorCode;
	String errorMsg;
}

class BannerData with JsonConvert<BannerData> {
	String desc;
	int id;
	String imagePath;
	int isVisible;
	int order;
	String title;
	int type;
	String url;
}
