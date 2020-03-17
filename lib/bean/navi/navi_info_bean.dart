import 'package:flutter_wan/generated/json/base/json_convert_content.dart';

class NaviInfoBean with JsonConvert<NaviInfoBean> {
	List<NaviInfoData> data;
	int errorCode;
	String errorMsg;
}

class NaviInfoData with JsonConvert<NaviInfoData> {
	List<NaviInfoDataArticle> articles;
	int cid;
	String name;
}

class NaviInfoDataArticle with JsonConvert<NaviInfoDataArticle> {
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
	List<dynamic> tags;
	String title;
	int type;
	int userId;
	int visible;
	int zan;
}
