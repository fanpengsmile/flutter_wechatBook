import 'package:flutter/material.dart';
import 'package:hello_word/base_cared.dart';

class CardSpecial extends BaseCard {
  _CardSpecialState createState() => _CardSpecialState();
}

class _CardSpecialState extends BaseCardState {
  @override
  void initState() {
    // TODO: implement initState
    bottomTitleColor = Colors.blue;
    super.initState();
  }

  @override
  topContnet() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 66, right: 66, top: 36, bottom: 30),
          decoration: BoxDecoration(color: Color(0xfffffcf7)),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 20, offset: Offset(0, 10))
            ]),
            child: Image.network(
                'http://www.devio.org/io/flutter_beauty/changan_book.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
          decoration: BoxDecoration(color: Color(0xfff7f3ea)),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '长安十二时辰...',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '樊鹏',
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Color(0xffd9bc82), Color(0xffecd9ae)])),
                child: Text(
                  '分享免费',
                  style: TextStyle(fontSize: 13, color: Color(0xff4f3b1a)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //水平撑开
        mainAxisAlignment: MainAxisAlignment.spaceAround, //垂直分部
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'http://www.devio.org/io/flutter_beauty/double_quotes.jpg',
                  width: 26,
                  height: 26,
                ),
                Text('揭秘历史真相')
              ],
            ),
          ),
          bottomTitle('更多好书领不停')
        ],
      ),
    );
  }
}
