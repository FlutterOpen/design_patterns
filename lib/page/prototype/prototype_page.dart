import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/prototype/prototype_product.dart';

/// Created by NieBin on 2020-03-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
class PrototypePage extends StatefulWidget {
  @override
  _PrototypePageState createState() => _PrototypePageState();
}

class _PrototypePageState extends State<PrototypePage> {
  Product product = Product("苹果", "${DateTime.now().toUtc()}");
  String cloneStr = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.PROTOTYPE_),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Text(
                    product.toString(),
                    style: TextStyle(color: Colors.green    , fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      product = Product("苹果", "${DateTime.now().toUtc()}");
                    });
                  },
                  child: Text("创建产品"),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Text(
                  cloneStr,
                  style: TextStyle(color: Colors.orange, fontSize: 16),
                )),
                SizedBox(
                  height: 100,
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    setState(() {
                      cloneStr = product.clone().toString();
                    });
                  },
                  child: Text("克隆产品"),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
