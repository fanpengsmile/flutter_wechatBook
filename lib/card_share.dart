import 'package:flutter/material.dart';
import 'package:hello_word/base_cared.dart';

class CardShare extends BaseCard {
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState {
  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
          decoration: BoxDecoration(color: Color(0xfff6f7f9)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
                  child: Image.network(
                      'http://www.devio.org/io/flutter_beauty/card_list.png'),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: bottomTitle('276565765人一ing参与活动'),
                ),
              )
            ],
          )),
    );
  }

  @override
  topTitle(String title) {
    return super.topTitle('分享得联名卡');
  }

  @override
  subTopTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        ' /第121期',
        style: TextStyle(fontSize: 10),
      ),
    );
  }

  @override
  Widget subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('分享最多得20天免费阅读');
  }

  @override
  bottomTitle(String title) {
    // TODO: implement bottomTitle
    return super.bottomTitle(title);
  }
}
