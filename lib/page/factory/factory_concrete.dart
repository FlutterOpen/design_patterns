import 'package:flutter/material.dart';
import 'package:flutter_design/page/factory/describe_text.dart';

/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
enum P { Android, Ios, Web }

//普通工厂写法
class DesFactory {
  static IPlatformDescribeText createPlatformText(P p) {
    switch (p) {
      case P.Android:
        return AndroidDescribeText();
      case P.Ios:
        return IosDescribeText();
      case P.Web:
        return WebDescribeText();
      default:
        return AndroidDescribeText();
    }
  }
}
