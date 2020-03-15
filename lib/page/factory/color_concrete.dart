/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

abstract class IColor {
  void fill();
}

class Red implements IColor {
  @override
  void fill() {
    print("this color is Red");
  }
}

class Green implements IColor {
  @override
  void fill() {
    print("this color is Green");
  }
}

class Yellow implements IColor {
  @override
  void fill() {
    print("this color is Yellow");
  }
}
