import 'package:flutter_wan/generated/json/base/json_convert_content.dart';

class ProjectDetailBean with JsonConvert<ProjectDetailBean> {
	ProjectDetailData data;
	int errorCode;
	String errorMsg;
}

class ProjectDetailData with JsonConvert<ProjectDetailData> {
	int curPage;
	List<ProjectDetailDataData> datas;
	int offset;
	bool over;
	int pageCount;
	int size;
	int total;
}

class ProjectDetailDataData with JsonConvert<ProjectDetailDataData> {
	String apkLink;
	int audit;
	String author;
	bool canEdit;
	int chapterId;
	String chapterName;
	bool collect;
	int courseId;
	String desc;
	String descMd;
	String envelopePic;
	bool fresh;
	int id;
	String link;
	String niceDate;
	String niceShareDate;
	String origin;
	String prefix;
	String projectLink;
	int publishTime;
	int selfVisible;
	int shareDate;
	String shareUser;
	int superChapterId;
	String superChapterName;
	List<ProjectDetailDataDatasTag> tags;
	String title;
	int type;
	int userId;
	int visible;
	int zan;
}

class ProjectDetailDataDatasTag with JsonConvert<ProjectDetailDataDatasTag> {
	String name;
	String url;
}
