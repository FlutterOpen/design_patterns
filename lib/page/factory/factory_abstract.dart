import 'package:flutter_design/page/factory/color_concrete.dart';
import 'package:flutter_design/page/factory/shape_concrete.dart';

/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
enum ColorType { Red, Green, Yellow }
enum ShapeType { Rectangle, Circle, Triangle }

///示列 抽象工厂
abstract class IFactory {
  IShape getShape(ShapeType type);

  IColor getColor(ColorType type);
}

class _ColorFactory implements IFactory {
  @override
  IColor getColor(ColorType type) {
    switch (type) {
      case ColorType.Green:
        return Green();
      case ColorType.Yellow:
        return Yellow();
      case ColorType.Red:
        return Red();
      default:
        return Red();
    }
  }

  @override
  IShape getShape(ShapeType type) {
    return null;
  }
}

class _ShapeFactory implements IFactory {
  @override
  IColor getColor(ColorType type) {
    return null;
  }

  @override
  IShape getShape(ShapeType type) {
    switch (type) {
      case ShapeType.Circle:
        return Circle();
      case ShapeType.Rectangle:
        return Rectangle();
      case ShapeType.Triangle:
        return Triangle();
      default:
        return Circle();
    }
  }
}

//选择工厂类型
enum FType { Color, Shape }

//工厂类的工厂类
class FactoryProducer {
  static IFactory createFactory(FType type) {
    switch (type) {
      case FType.Color:
        return _ColorFactory();
      case FType.Shape:
        return _ShapeFactory();
      default:
        return _ColorFactory();
    }
  }
}
