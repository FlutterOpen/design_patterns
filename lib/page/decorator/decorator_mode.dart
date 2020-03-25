import 'package:flutter/cupertino.dart';

/// Created by NieBin on 2020-03-24
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///

abstract class Building {
  String decorate();
}

class Paint implements Building {
  final Building building;

  Paint(this.building);

  @override
  String decorate() {
    return "1.${building.decorate()}";
  }
}

///商业建筑
class BusinessBuilding extends Building {
  @override
  String decorate() {
    return "装修商业楼";
  }
}

///居民楼
class PersonBuilding extends Building {
  @override
  String decorate() {
    return "装修居民楼";
  }
}

class RedPaint extends Paint {
  RedPaint(Building building) : super(building);

  @override
  String decorate() {
    return "${super.decorate()}\n 2.粉刷为红色";
  }
}

class GreenPaint extends Paint {
  GreenPaint(Building building) : super(building);

  @override
  String decorate() {
    return "${super.decorate()}\n 2.粉刷为绿色";
  }
}
