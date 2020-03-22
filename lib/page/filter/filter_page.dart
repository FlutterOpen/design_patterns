import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/filter/filter_mode.dart';

/// Created by NieBin on 2020-03-22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///过滤器模式
class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<Book> _books = List();

  @override
  void initState() {
    initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.FILTER_),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _item(),
        ),
      ),
    );
  }

  List<Widget> _item() {
    List<Widget> list = List();
    List<Book> persons = _personList();
    list.add(Container(
      constraints: BoxConstraints.expand(height: 20),
      color: Colors.blueGrey,
      child: Text(
        "人物分类",
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ));
    for (Book b in persons) {
      list.add((_bookItem(b)));
    }
    list.add(SizedBox(height: 10));
    list.add(Container(
      constraints: BoxConstraints.expand(height: 20),
      color: Colors.blueGrey,
      child: Text(
        "音乐分类",
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ));
    List<Book> musics = _musicList();
    for (Book b in musics) {
      list.add((_bookItem(b)));
    }
    return list;
  }

  Widget _bookItem(Book book) => Card(
        elevation: 4,
        child: Container(
          constraints: BoxConstraints.expand(height: 80),
          child: Column(
            children: <Widget>[
              Text("书名: ${book.name}"),
              Text("作者: ${book.author}"),
              Text("作品类型: ${book.type == "person" ? "人物" : "音乐"}"),
              Text("发布日期: ${book.date}")
            ],
          ),
        ),
      );

  //过滤人
  List<Book> _personList() {
    ICondition condition = PersonBookCondition();
    return condition.filter(_books);
  }

  //过滤音乐
  List<Book> _musicList() {
    ICondition condition = MusicBookCondition();
    return condition.filter(_books);
  }

  void initData() {
    _books.add(
        Book(name: "肖申克的救赎", author: "弗兰克·达拉邦特", type: "person", date: "2015"));

    _books.add(
        Book(name: "人类简史", author: "尤瓦尔·赫拉利", type: "person", date: "2014"));
    _books.add(Book(name: "黛玉专", author: "林海", type: "music", date: "2014"));
    _books.add(
        Book(name: "时间的秩序", author: "卡洛·罗韦利", type: "person", date: "2019"));
    _books.add(Book(name: "北方的女王", author: "绕十三", type: "music", date: "2020"));
    _books
        .add(Book(name: "小王子", author: "圣埃克苏佩里", type: "person", date: "2003"));

    _books
        .add(Book(name: "只想要太阳的你", author: "张特", type: "music", date: "2020"));
  }
}
