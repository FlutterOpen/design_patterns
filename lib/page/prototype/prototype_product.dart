/// Created by NieBin on 2020-03-18
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class IClone {
  IClone clone();
}

class Product implements IClone {
  String name;
  String date;

  Product(this.name, this.date);

  @override
  IClone clone() {
    Product p = Product(this.name,this.date);
    return p;
  }

  @override
  String toString() {
    return " name: $name \n date: $date";
  }
}
