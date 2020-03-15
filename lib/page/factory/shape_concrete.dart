/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class IShape {
  void draw();
}

class Rectangle implements IShape {
  @override
  void draw() {
    print("draw rectangle");
  }
}

class Circle implements IShape {
  @override
  void draw() {
    print("draw circle");
  }
}

class Triangle implements IShape {
  @override
  void draw() {
    print("draw triangle");
  }
}
