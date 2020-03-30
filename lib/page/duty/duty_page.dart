import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/duty/duty_mode.dart';

/// Created by NieBin on 2020-03-30
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class DutyPage extends StatefulWidget {
  @override
  _DutyPageState createState() => _DutyPageState();
}

class _DutyPageState extends State<DutyPage> {
  IHandler _handler;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.DUTY_),
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  if (_handler == null) {
                    _handler = EarthHandler();
                    IHandler moon = MoonHandler();

                    IHandler sun = SunHandler();
                    moon.nextHandler = sun;
                    _handler.nextHandler = moon;
                    print("初始化成功");
                  } else {
                    print("你已经初始化");
                  }
                },
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("初始化"),
                ),
              ),
              SizedBox(height: 10),
              FlatButton(
                onPressed: () {
                  MessageModel model = MessageModel("我爱地球", IHandler.LEVEL_ONE);
                  _handler.hand(model);
                },
                color: Colors.green,
                child: Text("发送信息给地球"),
              ),
              SizedBox(height: 10),
              FlatButton(
                onPressed: () {
                  MessageModel model = MessageModel("我爱月球", IHandler.LEVEL_TWO);
                  _handler.hand(model);
                },
                color: Colors.blueGrey,
                child: Text("发送信息给月亮"),
              ),
              SizedBox(height: 10),
              FlatButton(
                onPressed: () {
                  MessageModel model =
                      MessageModel("我爱太阳", IHandler.LEVEL_THREE);
                  _handler.hand(model);
                },
                color: Colors.red,
                child: Text("发送信息给太阳"),
              ),
            ],
          )),
    );
  }
}
