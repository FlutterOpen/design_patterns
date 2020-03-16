/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
class SingleManager {
  SingleManager._();

  factory SingleManager() => _getInstance();
  static SingleManager _instance;

  static SingleManager get instance => _getInstance();

  static SingleManager _getInstance() {
    if (_instance == null) {
      _instance = SingleManager._();
    }
    return _instance;
  }

  int count = 0;
}
