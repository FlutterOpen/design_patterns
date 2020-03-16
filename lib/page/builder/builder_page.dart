import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';

/// Created by NieBin on 2020-03-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
class BuilderPage extends StatefulWidget {
  @override
  _BuilderPageState createState() => _BuilderPageState();
}

class _BuilderPageState extends State<BuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.BUILDER_),
      ),
    );
  }
}
