import 'package:flutter/cupertino.dart';

/// Created by NieBin on 2020-03-24
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class Building {
  final IPaint paint;

  Building(this.paint);

  String decorate();
}

abstract class IPaint {
  String decoration();
}

///商业建筑
class BusinessBuilding extends Building {
  BusinessBuilding(IPaint paint) : super(paint);

  @override
  String decorate() {
    return "装修商业楼\n${paint.decoration()}";
  }
}

///居民楼
class PersonBuilding extends Building {
  PersonBuilding(IPaint paint) : super(paint);

  @override
  String decorate() {
    return "装修居民楼\n${paint.decoration()}";
  }
}

class RedPaint extends IPaint {
  @override
  String decoration() {
    return "粉刷为红色";
  }
}

class GreenPaint extends IPaint {
  @override
  String decoration() {
    return "粉刷为绿色";
  }
}
