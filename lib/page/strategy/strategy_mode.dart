import 'package:flutter/cupertino.dart';

/// Created by NieBin on 2020-04-15
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class IMove {
  void run();
}

class Fly extends IMove {
  @override
  void run() {
    debugPrint("我用飞的不香吗");
  }
}

//
class Run extends IMove {
  @override
  void run() {
    debugPrint("跑步使我快乐");
  }
}

class Walk extends IMove {
  @override
  void run() {
    debugPrint("散散步也不无不行");
  }
}

class ByBike extends IMove {
  @override
  void run() {
    debugPrint("骑行也是很环保的");
  }
}

class ByBus extends IMove {
  @override
  void run() {
    debugPrint("还是老司机开车快点");
  }
}

class Context implements IMove {
  IMove move;

  @override
  void run() {
    move?.run();
  }
}
