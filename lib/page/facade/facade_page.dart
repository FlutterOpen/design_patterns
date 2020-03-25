import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/facade/facade_model.dart';

/// Created by NieBin on 2020-03-25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class FacadePage extends StatefulWidget {
  @override
  _FacadePageState createState() => _FacadePageState();
}

class _FacadePageState extends State<FacadePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.FACADE_),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.brown,
          onPressed: () {
            FacadeManager.instance.open();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("紫妈开门"),
          ),
        ),
      ),
    );
  }
}
