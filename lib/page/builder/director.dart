import 'package:flutter_design/page/builder/builder.dart';

import 'book.dart';

/// Created by NieBin on 2020-03-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///排布build进行书籍书写
class BusinessDirector {
  IBuilder _builder;

  BusinessDirector(this._builder);

  String publish(
    String name,
    String content,
    String author,
    int page,
    String address,
    String phone,
    String businessName,
  ) {
    _builder
      ..name = name
      ..author = author
      ..page = page
      ..address = address
      ..phone = phone
      ..content = content
      ..businessName = businessName;
    Book book = _builder.build();
    String b = "开始发布\n";
    b += "书名: ${book.name}\n";
    b += "作者: ${book.author}\n";
    b += "出版社名称:${book.businessName}\n";
    b += "地址:${book.address}\n";
    b += "电话:${book.phone}\n";
    b += "书内容: \n${book.content}\n";
    return b;
  }
}
