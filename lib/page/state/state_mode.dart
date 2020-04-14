import 'package:flutter/cupertino.dart';

/// Created by NieBin on 2020-04-14
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///参考文章https://www.runoob.com/w3cnote/state-vs-strategy.html
abstract class State {
  void eatWater();

  void watchSea();
}

class FlyState extends State {
  @override
  void eatWater() {
    print("高空跳伞太危险不能喝水");
  }

  @override
  void watchSea() {
    print("飞得高看得远,整个大海都尽收眼底");
  }
}

class SubWayState extends State {
  @override
  void eatWater() {
    print("拿起你的矿泉水瓶开始喝水");
  }

  @override
  void watchSea() {
    print("拿起手机开始看大海的视频");
  }
}

class HomeState extends State {
  @override
  void eatWater() {
    print("用杯子倒一杯水喝了起来");
  }

  @override
  void watchSea() {
    print("打卡电视机,调到能看大海的频道");
  }
}

//如果程序员要执行这些状态会怎么样呢
class Programmer extends State {
  FlyState _flyState = FlyState();
  SubWayState _subWayState = SubWayState();
  HomeState _homeState = HomeState();

  State get fly => _flyState;

  State get subway => _subWayState;

  State get homeState => _homeState;
  State state;

  Programmer() {
    state = homeState;
  }

  @override
  void eatWater() {
    state?.eatWater();
  }

  @override
  void watchSea() {
    state.watchSea();
  }
}
