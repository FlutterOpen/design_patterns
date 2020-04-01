/// Created by NieBin on 2020-04-01
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class Expression {
  int interpret();
}

class Value implements Expression {
  final int number;

  Value(this.number);

  @override
  int interpret() {
    return number;
  }

  @override
  String toString() {
    return "$number";
  }
}

class Add implements Expression {
  final Expression value1;
  final Expression value2;

  Add(this.value1, this.value2);

  @override
  int interpret() {
    return value1.interpret() + value2.interpret();
  }
}

class Minus implements Expression {
  final Expression value1;
  final Expression value2;

  Minus(this.value1, this.value2);

  @override
  int interpret() {
    return value1.interpret() - value2.interpret();
  }
}

class Multiple implements Expression {
  final Expression value1;
  final Expression value2;

  Multiple(this.value1, this.value2);

  @override
  int interpret() {
    return value1.interpret() * value2.interpret();
  }
}
