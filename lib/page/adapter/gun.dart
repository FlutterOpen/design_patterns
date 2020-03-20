/// Created by NieBin on 2020-03-20
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
/// 以下主要对象适配器的实例
abstract class IOldMode {
  void fire();
}

class OldMode implements IOldMode {
  @override
  void fire() {
    print("发射20mm子弹");
  }
}

abstract class INewMode {
  void newFire();
}

class NewMode implements INewMode {
  @override
  void newFire() {
    print("发射两米长的大菜刀");
  }
}

class ModeAdapter implements IOldMode {
  INewMode _mode;

  set newMode(INewMode mode) => _mode = mode;

  @override
  void fire() {
    _mode.newFire();
  }
}

class Gun {
  IOldMode _mode;

  set mode(IOldMode mode) => _mode = mode;

  void fire() {
    _mode.fire();
  }
}
