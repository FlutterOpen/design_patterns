import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/memory/memory_mode.dart';

/// Created by NieBin on 2020-04-07
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class MemoryPage extends StatefulWidget {
  @override
  _MemoryPageState createState() => _MemoryPageState();
}

class _MemoryPageState extends State<MemoryPage> {
  String content;

  MemoryContainer _container;
  XiaoMing _xiaoMing;

  @override
  void initState() {
    _container = MemoryContainer();
    _xiaoMing = XiaoMing()
      ..name = "小名"
      ..age = 22;
    _container.memory = _xiaoMing.createMemory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.MEMORY_),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(content ?? "待玩起来"),
            Text("记忆内容: ${_container.memory.toString()}"),
            SizedBox(height: 10),
            FlatButton(
              onPressed: () {
                setState(() {
                  _container.memory = _xiaoMing.createMemory();
                });
              },
              color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("用笔记一下"),
              ),
            ),
            SizedBox(height: 10),
            FlatButton(
              onPressed: () {
                _xiaoMing.age = _xiaoMing.age + 1;
                setState(() {
                  content = _xiaoMing.toString();
                });
              },
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("小名长大一岁"),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  _xiaoMing.restore(_container.memory);
                  content = _xiaoMing.toString();
                });
              },
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("穿越到最年轻的时候"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
