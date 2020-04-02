/// Created by NieBin on 2020-04-02
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class Iterator<T> {
  bool hasNext();

  bool hasPrev();

  T next();

  T prev();
}

abstract class Aggregate {
  Iterator createIterator();
}

class NameIterator implements Iterator<String> {
  int _index = 0;
  final NameAggregate name;

  NameIterator(this.name);

  @override
  bool hasNext() => _index < name.size && name.size > 0;

  @override
  String next() {
    if (hasNext()) {
      return name.getCurrentName(_index++);
    } else {
      return name.getCurrentName(name.size - 1);
    }
  }

  @override
  String prev() {
    if (hasPrev()) {
      return name.getCurrentName(_index--);
    } else {
      return name.getCurrentName(0);
    }
  }

  @override
  bool hasPrev() => _index <= name.size && _index > 0 && name.size > 0;
}

class NameAggregate implements Aggregate {
  final List<String> names;

  NameAggregate(this.names);

  @override
  Iterator createIterator() {
    return NameIterator(this);
  }

  String getCurrentName(int index) {
    if (index < size) {
      return names[index];
    } else {
      return null;
    }
  }

  int get size => names.length;
}
