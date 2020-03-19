import 'package:flutter_wan/generated/json/base/json_convert_content.dart';

class ProjectBean with JsonConvert<ProjectBean> {
	List<ProjectData> data;
	int errorCode;
	String errorMsg;
}

class ProjectData with JsonConvert<ProjectData> {
	List<dynamic> children;
	int courseId;
	int id;
	String name;
	int order;
	int parentChapterId;
	bool userControlSetTop;
	int visible;
}
