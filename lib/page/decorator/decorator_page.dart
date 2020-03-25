import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/decorator/decorator_mode.dart';

/// Created by NieBin on 2020-03-24
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class DecoratorPage extends StatefulWidget {
  @override
  _DecoratorPageState createState() => _DecoratorPageState();
}

class _DecoratorPageState extends State<DecoratorPage> {
  String businessStr = "";
  String personStr = "";

  bool isPersonEven = false;
  bool isBusinessEven = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.DECORATOR_),
      ),
      body: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$businessStr",
                    style: TextStyle(
                      color: isBusinessEven ? Colors.red : Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    color: Colors.brown,
                    onPressed: () {
                      setState(() {
                        isBusinessEven = !isBusinessEven;
                        Paint p = isBusinessEven
                            ? RedPaint(BusinessBuilding())
                            : GreenPaint(BusinessBuilding());
                        businessStr = p.decorate();
                      });
                    },
                    child: Text(
                      "装修商业楼",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$personStr",
                    style: TextStyle(
                      color: isPersonEven ? Colors.red : Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    color: Colors.brown,
                    onPressed: () {
                      setState(() {
                        isPersonEven = !isPersonEven;
                        Paint p = isPersonEven
                            ? RedPaint(PersonBuilding())
                            : GreenPaint(PersonBuilding());
                        personStr = p.decorate();
                      });
                    },
                    child: Text(
                      "装修居民楼",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
