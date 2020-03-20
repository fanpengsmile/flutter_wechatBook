import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double paddinfTop = MediaQuery.of(context).padding.top;
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 5),
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19), color: Colors.white),
      child: Row(
        children: <Widget>[
          Icon(Icons.search, color: Colors.grey),
          Expanded(
            child: Text(
              '更多精彩活动等你来',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Container(
            width: 1,
            height: 20,
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Text(
            '搜索',
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
