/// Created by NieBin on 2020-03-25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class IOTObject {
  void open();
}

class Light implements IOTObject {
  @override
  void open() {
    print("打开智能灯");
  }
}

class TV implements IOTObject {
  @override
  void open() {
    print("打开智能电视");
  }
}

class Door implements IOTObject {
  @override
  void open() {
    print("打开智能门");
  }
}

class FacadeManager {
  FacadeManager._();

  static FacadeManager _instance;

  static FacadeManager get instance => _getInstance();

  static FacadeManager _getInstance() {
    if (_instance == null) {
      _instance = FacadeManager._();
    }
    return _instance;
  }

  void open() {
    IOTObject light = Light();
    IOTObject tv = TV();
    IOTObject door = Door();
    light.open();
    tv.open();
    door.open();
  }
}
