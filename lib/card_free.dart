import 'package:hello_word/base_cared.dart';
import 'package:flutter/material.dart';

class CardFree extends BaseCard {
  _CardFreeState createState() => _CardFreeState();
}

const BOOK_LIST = [
  {'title': '暴力沟通', 'cover': '51VykQqGq9L._SY346_.jpg', 'price': '19.6'},
  {'title': '论中国', 'cover': '41APiBzC41L.jpg', 'price': '35.6'},
  {'title': '饥饿的盛事', 'cover': '51M6M87AXOL.jpg', 'price': '17.6'},
  {'title': '楚天之怒', 'cover': '51oIE7H5gnL.jpg', 'price': '89.6'},
  {'title': '我就是风口', 'cover': '51vzcX1U1FL.jpg', 'price': '190.6'},
  {'title': '大宋的智慧', 'cover': '517DW6EbhGL.jpg', 'price': '19.6'},
];

class _CardFreeState extends BaseCardState {
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('免费读书馆');
  }

  @override
  Widget subTopTitle(String title) {
    // TODO: implement subTopTitle
    return super.subTopTitle('第 1998 期');
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Expanded(child: _bookList()),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _bottomButton(),
            )
          ],
        ),
      ),
    );
  }

  _bookList() {
    return GridView.count(
      crossAxisCount: 3,
      //垂直间距
      mainAxisSpacing: 10,
      //水平间距
      crossAxisSpacing: 15,
      //长宽比
      childAspectRatio: 0.46,
      padding: EdgeInsets.only(left: 20, right: 20),
      children: BOOK_LIST.map((item) {
        return _item(item);
      }).toList(),
    );
  }

  Widget _bottomButton() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.only(top: 13, bottom: 15),
          color: Colors.blue,
          child: Text(
            '免费领取',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          //绝对布局
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                  ''
                  'http://www.devio.org/io/flutter_beauty/book_cover/${item['cover']}',
                  fit: BoxFit.contain),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Colors.black54),
                  child: Text('原价${item['price']}',
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item['title'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
