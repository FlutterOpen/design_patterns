import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/adapter/adapter_target.dart';

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Hello world :${target.string()}",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
