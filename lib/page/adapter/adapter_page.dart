import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/adapter/adapter_target.dart';
import 'package:flutter_design/page/adapter/gun.dart';

/// Created by NieBin on 2020-03-18
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class AdapterPage extends StatefulWidget {
  @override
  _AdapterPageState createState() => _AdapterPageState();
}

class _AdapterPageState extends State<AdapterPage> {
  @override
  Widget build(BuildContext context) {
    ITarget target = Adapter();
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.ADAPTER_),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("接口adapter模式"),
            Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "适配内容 :${target.string()}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("对象adapter模式"),
            FlatButton(
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("点击看看log"),
              ),
              onPressed: () {
                //正常
                Gun gun = Gun();
                gun.mode = OldMode();
                gun.fire();
                //适配器
                ModeAdapter adapter = ModeAdapter();
                adapter.newMode = NewMode();
                gun.mode = adapter;
                gun.fire();
              },
            )
          ],
        ),
      ),
    );
  }
}
