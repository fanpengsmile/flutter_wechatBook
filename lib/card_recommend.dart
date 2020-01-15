import 'package:flutter/material.dart';
import 'package:hello_word/base_cared.dart';

class CardRecommend extends BaseCard {
  //本周推荐
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    sybTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('本週推薦');
  }

  @override
  Widget subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('送你一天免給無線');
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(), //尽可能盛满父布局容器
        margin: EdgeInsets.only(top: 20),
        child: Image.network(
          'http://www.devio.org/io/flutter_beauty/card_1.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
