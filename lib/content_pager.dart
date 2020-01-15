import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'card_free.dart';
import 'card_recommend.dart';
import 'card_share.dart';
import 'card_spectial.dart';
import 'custon_appbar.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;
//构造方法
  const ContentPager({Key key, this.onPageChanged, this.contentPagerController})
      : super(key: key);
  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController = PageController(viewportFraction: 0.8);
  @override
  void initState() {
    if (widget.contentPagerController != null) {
      widget.contentPagerController._controller = _pageController;
    }
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //app bar
        CustomAppBar(),
        Expanded(
          //撑开column高度
          child: PageView(
            controller: _pageController,
            onPageChanged: widget.onPageChanged,
            children: <Widget>[
              _wrapItem(CardRecommend()),
              _wrapItem(CardShare()),
              _wrapItem(CardFree()),
              _wrapItem(CardSpecial())
            ],
          ),
        )
      ],
    );
  }

  Widget _wrapItem(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }

  //沉qin式状态栏
  _statusBar() {
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

class ContentPagerController {
  PageController _controller;
  void jumpToPage(int page) {
    //dart 编程技巧：安全调用
    _controller?.jumpToPage(page);
  }
}
