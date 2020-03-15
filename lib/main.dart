import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConst.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        "page": (context) => Container(),
      },
    );
  }
}
