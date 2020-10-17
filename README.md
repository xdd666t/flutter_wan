## 说明

**多谢铁子们给我点的小星星，为了对得起你们的支持，我重写了第一版所有模块，也填坑了第二版**
- 初版的fish_redux的玩Android是我刚学flutter时写的，代码写的比较混乱，重构代码，
也是为了让大家更清晰了解fish_redux结构，也给出TabBar控制器在fish_redux初始化的解决方案，大家可以看看
- 重构的所有模块，无限弱化了reducer层作用
    - 在日程使用fish_redux和flutter_bloc后，实际能深刻体会reducer实际上只是相当于bloc中yield
    或emit关键字的作用，职能完全可以弱化为，仅仅作为状态刷新；这样可以大大简化开发流程，只需要关注
    view -> action -> effect (reducer: 统一刷新事件)
- view模块中，页面使用widget组合的方式去构造的，只传入必要的数据源和保留一些点击回调
    - 为什么用widget组合方式构造页面：非常复杂的界面，必须将页面分成一个个小模块，然后再将其组合，
    每个小模块Widget内部应当对自身的的职能，能逻辑自洽的处理
    - 组合widget关键点：一般来说，我们并不关注widget内部页面的实现，只需要关的是widget需要的数据源，
    以及widget对交互的反馈；例如：我点击widget后，widget回调事件，并传达一些数据给我；至于内部怎么实现，
    外部并不关心，请勿将dispatch传递到封装的widget内部，这会使我们关注的事件被封装在内部

## fish_redux使用
- 注：该项目为Flutter + fish_redux，页面基本均是fish_redux搭建
- fish-redux使用
  - 教程：[掘金：fish_redux使用详解---看完就会用！](https://juejin.im/post/6860029460524040199)
    - 备用：[CSDN：fish_redux使用详解---看完就会用！](https://blog.csdn.net/CNAD666/article/details/107963034)
  - [代码demo地址](https://github.com/CNAD666/ExampleCode/tree/master/Flutter/fish_redux_demo)
  
## 第一版

- [x] ~~首页banner展示，首页文章分页加载，完成下拉刷新，上拉加载~~
- [x] ~~完成知识体系和体系详情模块~~
- [x] ~~完成导航模块~~
- [x] ~~完成项目模块~~
- [x] ~~侧栏布局完成，功能留坑，方便添加~~



## 预计第二版

- [ ] 搜索功能

- [ ] 收藏，查看收藏功能

- [ ] 登录功能（这个实际就是登拿个参数，去请求收藏的信息等）

- [ ] 侧栏的一列功能填坑



## app安装地址

- android

  ![](https://raw.githubusercontent.com/CNAD666/MyData/master/pic/study/20200322172901.png)

- ios

  - 下载项目，直接跑吧。本人没iPhone也没Mac，没法打包呀

## app界面

<img src="https://raw.githubusercontent.com/CNAD666/MyData/master/pic/study/20200322180926.jpg" width = "337" height = "650" div align=left />

<img src="https://raw.githubusercontent.com/CNAD666/MyData/master/pic/study/20200322180842.jpg"  width = "337" height = "650" />

<img src="https://raw.githubusercontent.com/CNAD666/MyData/master/pic/study/20200322181013.jpg"  width = "337" height = "650" div align=left />

<img src="https://raw.githubusercontent.com/CNAD666/MyData/master/pic/study/20200322181047.jpg"  width = "337" height = "650" />

<img src="https://raw.githubusercontent.com/CNAD666/MyData/master/pic/study/20200322181115.jpg"  width = "337" height = "650" div align=left /> 
