import 'package:flutter_design/page/builder/book.dart';

/// Created by NieBin on 2020-03-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
abstract class IBuilder {
  set name(String name);

  set page(int page);

  set address(String address);

  set phone(String phone);

  set date(String date);

  set content(String content);

  set author(String author);

  set businessName(String business);

  Book build();
}

class DuBuilder implements IBuilder {
  Book _book = Book();

  @override
  set address(String address) => _book.address = "$address";

  @override
  set author(String author) => _book.author = "独家-$author";

  @override
  Book build() => _book;

  @override
  set businessName(String business) => _book.businessName = business;

  @override
  set date(String date) => _book.date = date;

  @override
  set name(String name) => _book.name = name;

  @override
  set page(int page) => _book.page = page;

  @override
  set phone(String phone) => _book.phone = phone;

  @override
  set content(String content) {
    _book.content = "独家制作书籍，非卖品\n";
    _book.content += content;
    _book.content += "\n独家感谢你的阅读";
  }
}
