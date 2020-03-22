/// Created by NieBin on 2020-03-22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
class Book {
  String name;
  String author;
  String type;
  String date;

  Book({
    this.name,
    this.author,
    this.type,
    this.date,
  });
}

abstract class ICondition {
  List<Book> filter(List<Book> source);
}

class PersonBookCondition implements ICondition {
  @override
  List<Book> filter(List<Book> source) {
    if (source == null || source.length == 0) return null;
    return source.where((element) => element.type == "person").toList();
  }
}

class MusicBookCondition implements ICondition {
  @override
  List<Book> filter(List<Book> source) {
    if (source == null || source.length == 0)
      return null;
    else
      return source.where((element) => element.type == "music").toList();
  }
}
