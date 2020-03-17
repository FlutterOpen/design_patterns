import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';

/// Created by NieBin on 2020-03-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
class PrototypePage extends StatefulWidget {
  @override
  _PrototypePageState createState() => _PrototypePageState();
}

class _PrototypePageState extends State<PrototypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.PROTOTYPE_),
      ),
    );
  }
}
