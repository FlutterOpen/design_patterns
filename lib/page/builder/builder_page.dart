import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/builder/builder.dart';
import 'package:flutter_design/page/builder/director.dart';

/// Created by NieBin on 2020-03-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
class BuilderPage extends StatefulWidget {
  @override
  _BuilderPageState createState() => _BuilderPageState();
}

class _BuilderPageState extends State<BuilderPage> {
  IBuilder _builder = DuBuilder();
  BusinessDirector _director;

  @override
  Widget build(BuildContext context) {
    if (_director == null) {
      _director = BusinessDirector(_builder);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.BUILDER_),
      ),
      body: Container(
        child: Center(
          child: Text(
            _director.publish(
              "《春风20里》",
              "春回大地，万物复苏，又是一个可以做自己爱做的事情",
              "东边的小草",
              1,
              "北国的最南端",
              "1234321",
              "月球出版社",
            ),
          ),
        ),
      ),
    );
  }
}
