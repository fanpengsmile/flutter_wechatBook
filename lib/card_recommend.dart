import 'package:flutter/material.dart';
import 'package:hello_word/base_cared.dart';
import 'package:hello_word/card_free.dart';
import 'package:hello_word/custon_appbar.dart';

class CardRecommend extends BaseCard {
  //本周推荐
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  final asc = ['qwe', 'qweqwe', 'qweqwe'];
  bool showItemList  = true;
  final BOOK_LIST = [
    {
      'title': '暴力沟通',
      'cover': '51VykQqGq9L._SY346_.jpg',
      'price': '19.6',
      'person': '2'
    },
    {
      'title': '论中国',
      'cover': '41APiBzC41L.jpg',
      'price': '35.6',
      'person': '2'
    },
    {
      'title': '饥饿的盛事',
      'cover': '51M6M87AXOL.jpg',
      'price': '17.6',
      'person': '2'
    },
    {
      'title': '楚天之怒',
      'cover': '51oIE7H5gnL.jpg',
      'price': '89.6',
      'person': '2'
    },
    {
      'title': '我就是风口',
      'cover': '51vzcX1U1FL.jpg',
      'price': '190.6',
      'person': '2'
    },
    {
      'title': '大宋的智慧',
      'cover': '517DW6EbhGL.jpg',
      'price': '19.6',
      'person': '2'
    },
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (showItemList) {
return Container(
      decoration: BoxDecoration(color: Colors.white60),
      child: Column(
        children: <Widget>[CustomAppBar(), getItemList()],
      ),
    );
    } else {
      return Container(
        decoration: BoxDecoration(color: Colors.white60),
        child: Text('data'),
      );
    }
    
  }

  Expanded getItemList() {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 1,
        //垂直间距
        mainAxisSpacing: 8,
        //水平间距
        crossAxisSpacing: 1,
        //长宽比
        childAspectRatio: 2.5,
        padding: EdgeInsets.only(left: 2, right: 2),
        children: BOOK_LIST.map((item) {
          return _item(item);
        }).toList(),
      ),
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
        decoration: BoxDecoration(color: Colors.white70),
        child: new Material(//点击波纹效果
            child: new GestureDetector(//给任意组件添加点击事件
                onTap: () {//点击的回调函数
                   setState(() {
                     showItemList = false;
                   });
                },
                child: Row(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Image.network(
                        ''
                        'http://www.devio.org/io/flutter_beauty/book_cover/${item['cover']}',
                        fit: BoxFit.contain),
                  ),
                  Expanded(//自动扩展剩余空间
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Text(
                          item['title'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 20, top: 10),
                            child: Text('￥${item['price']}/${item['person']}天',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 20, top: 10),
                              child: Text('${item['person']}人已报名',
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15))),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(bottom: 40, top: 10),
                          child: Text(
                              '${item['title']}/${item['person']}试测试试测试试测试试测试试测试试测试试测试试测试试测试试测试',
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 180),
                          child: Text('活动已经结束',
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13)),
                        ),
                      ]))
                ]))));
  }
}
