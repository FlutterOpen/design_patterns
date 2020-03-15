import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';

/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//参考链接
Map<String, String> map = {"page": "content"};

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List();
    List<String> keys = map.keys.toList();
    for (int i = 0; i < map.length; i++) {
      String page = keys[i];
      String content = map[page];
      Widget w = _item(page: page, content: content);
      items.add(w);
      items.add(_line());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.APP_NAME),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: items,
      ),
    );
  }

  Widget _line() => Divider(height: 1);

  Widget _item({String content, String page}) => Container(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(page);
          },
          child: Card(
            child: Center(
              child: Text(content),
            ),
          ),
        ),
      );
}
