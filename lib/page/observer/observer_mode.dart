/// Created by NieBin on 2020-04-13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class ISubject {
  void attach(IObserver observer);

  void detach(IObserver observer);

  void detachAll();

  void notify();
}

class RealSubject extends ISubject {
  List<IObserver> _list;
  String _name;

  String get name => _name;

  set name(String n) {
    _name = n;
    notify();
  }

  RealSubject() {
    _list = List();
  }

  @override
  void attach(IObserver observer) {
    if (observer == null) return;
    if (!_list.contains(observer)) {
      _list.add(observer);
    }
  }

  @override
  void detach(IObserver observer) {
    if (_list.contains(observer)) {
      _list.remove(observer);
    }
  }

  @override
  void detachAll() {
    _list.clear();
  }

  @override
  void notify() {
    for (IObserver observer in _list) {
      observer.update(name);
    }
  }
}

abstract class IObserver {
  void update(String name);
}

class AObserver extends IObserver {
  String content;

  @override
  void update(String name) {
    print("我是A,收到外星人： $name");
  }
}

class BObserver extends IObserver {
  @override
  void update(String name) {
    print("我是B,收到一个东西: $name");
  }
}
