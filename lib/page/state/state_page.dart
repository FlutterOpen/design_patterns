import 'package:flutter/material.dart';
import 'package:flutter_design/page/state/state_mode.dart' as s;

/// Created by NieBin on 2020-04-14
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class StatePage extends StatefulWidget {
  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  s.Programmer _programmer;

  @override
  void initState() {
    _programmer = s.Programmer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态模式"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.red,
              child: Text("跳伞飞起来"),
              onPressed: () {
                _programmer.state = s.FlyState();
              },
            ),
            FlatButton(
              color: Colors.yellow,
              child: Text("坐地铁"),
              onPressed: () {
                _programmer.state = s.SubWayState();
              },
            ),
            FlatButton(
              color: Colors.orange,
              child: Text("在家里"),
              onPressed: () {
                _programmer.state = s.HomeState();
              },
            ),
            FlatButton(
              color: Colors.green,
              child: Text("喝水"),
              onPressed: () {
                _programmer.eatWater();
              },
            ),
            FlatButton(
              color: Colors.pink,
              child: Text("看海"),
              onPressed: () {
                _programmer.watchSea();
              },
            )
          ],
        ),
      ),
    );
  }
}
