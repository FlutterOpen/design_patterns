import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/flyweight/flyweight_mode.dart';

/// Created by NieBin on 2020-03-26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class FlyweightPage extends StatefulWidget {
  @override
  _FlyweightPageState createState() => _FlyweightPageState();
}

class _FlyweightPageState extends State<FlyweightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.FLYWEIGHT_),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClockManager.getColorClock("pink").display(),
              SizedBox(height: 10,),
              ClockManager.getColorClock("green").display(),
              SizedBox(height: 10,),
              ClockManager.getColorClock("blue").display(),
              SizedBox(height: 10,),
              ClockManager.getColorClock("12423").display(),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
