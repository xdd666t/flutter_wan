class ArticleDetailBean {
  ArticleDetailBean({
    this.title,
    this.url,
    this.id,
    this.isCollect,
  });

  ///文章id
  int id;

  ///标题
  String title;

  ///文章链接
  String url;

  ///是否被收藏
  bool isCollect;
}
