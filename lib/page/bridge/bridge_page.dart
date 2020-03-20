import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/bridge/bridge_mode.dart';

/// Created by NieBin on 2020-03-20
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class BridgePage extends StatefulWidget {
  @override
  _BridgePageState createState() => _BridgePageState();
}

class _BridgePageState extends State<BridgePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.BRIDGE_),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("演示桥接模式"),
            FlatButton(
              color: Colors.brown,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("启动小车"),
              ),
              onPressed: () {
                ///
                ICar small = SmallCar();
                small.transmission = AutoTrans();
                small.run();
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              color: Colors.brown,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("启动大车"),
              ),
              onPressed: () {
                ///
                ICar large = LargeCar();
                large.transmission = ManualTrans();
                large.run();
              },
            )
          ],
        ),
      ),
    );
  }
}
