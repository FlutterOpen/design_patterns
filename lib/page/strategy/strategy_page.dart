import 'package:flutter/material.dart';
import 'package:flutter_design/page/strategy/strategy_mode.dart';

/// Created by NieBin on 2020-04-15
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class StrategyPage extends StatefulWidget {
  @override
  _StrategyPageState createState() => _StrategyPageState();
}

class _StrategyPageState extends State<StrategyPage> {
  Context _context;

  @override
  void initState() {
    _context = Context();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("策略模式"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("开始飞"),
              ),
              onPressed: () {
                _context.move = Fly();
                _context.run();
              },
            ),
            FlatButton(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("开始跑"),
              ),
              onPressed: () {
                _context.move = Run();
                _context.run();
              },
            ),
            FlatButton(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("开始散步"),
              ),
              onPressed: () {
                _context.move = Walk();
                _context.run();
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("开始骑行"),
              ),
              onPressed: () {
                _context.move = ByBike();
                _context.run();
              },
            ),
            FlatButton(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("开始开车"),
              ),
              onPressed: () {
                _context.move = ByBus();
                _context.run();
              },
            ),
          ],
        ),
      ),
    );
  }
}
