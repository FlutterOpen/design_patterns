import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/iterator/iterator_mode.dart';

/// Created by NieBin on 2020-04-02
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class IteratorPage extends StatefulWidget {
  @override
  _IteratorPageState createState() => _IteratorPageState();
}

class _IteratorPageState extends State<IteratorPage> {
  final List<String> _names = [
    "小明",
    "老张",
    "大黄",
    "嫦娥",
    "貂蝉",
  ];
  String _name = "待切换";
  Iterator _iterator;
  Aggregate _aggregate;

  @override
  void initState() {
    super.initState();
    _aggregate = NameAggregate(_names);
    _iterator = NameIterator(_aggregate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.ITERATOR_),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: _nameItems(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 100),
              color: Colors.brown,
              child: Center(
                child: Text(_name),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("上一个"),
                  ),
                  onPressed: () {
                    setState(() {
                      _name = _iterator.prev() ?? "没有上一个";
                    });
                  },
                ),
                SizedBox(width: 10),
                FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("下一个"),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      _name = _iterator.next() ?? "没有下一个";
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _nameItems() {
    List<Widget> names = List();
    for (String name in _names) {
      names.add(_nameItem(name));
      names.add(SizedBox(width: 4));
    }
    return names;
  }

  Widget _nameItem(String name) => Container(
        color: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          name,
          style: TextStyle(fontSize: 20),
        ),
      );
}
