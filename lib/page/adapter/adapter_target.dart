/// Created by NieBin on 2020-03-18
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///适配对象
class Adaptee {
  String oldStr() {
    return "I come from old system,\nI donot know your language";
  }
}

//常规使用
abstract class ITarget {
  String string();
}

class Adapter extends Adaptee implements ITarget {
  @override
  String string() {
    return oldStr();
  }
}
