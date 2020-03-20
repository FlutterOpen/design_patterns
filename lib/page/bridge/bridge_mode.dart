/// Created by NieBin on 2020-03-20
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class ITransmission {
  void gear();
}

abstract class ICar {
  ITransmission _transmission;

  set transmission(ITransmission transmission) {
    _transmission = transmission;
  }

  void run();
}

class SmallCar extends ICar {
  @override
  void run() {
    _transmission.gear();
    print("启动小车");
  }
}

class LargeCar extends ICar {
  @override
  void run() {
    _transmission.gear();
    print("启动大车");
  }
}

class AutoTrans implements ITransmission {
  @override
  void gear() {
    print("切换到自动带");
  }
}

class ManualTrans implements ITransmission {
  @override
  void gear() {
    print("切换到手动档");
  }
}
