import 'package:flutter/material.dart';
import 'package:flutter_design/constant/color_const.dart';

/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.
//
abstract class IPlatformDescribeText {
  Widget text(String content);
}

class AndroidDescribeText implements IPlatformDescribeText {
  @override
  Widget text(String content) => Card(
        child: Center(
          child: Text(
            content,
            style: TextStyle(
                fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
      );
}

class IosDescribeText implements IPlatformDescribeText {
  @override
  Widget text(String content) => Card(
        elevation: 10,
        child: Center(
          child: Text(
            content,
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.w100),
          ),
        ),
      );
}

class WebDescribeText implements IPlatformDescribeText {
  @override
  Widget text(String content) => Card(
        elevation: 4,
        child: Center(
          child: Text(
            content,
            style: TextStyle(fontSize: 16, color: Colors.purple),
          ),
        ),
      );
}
