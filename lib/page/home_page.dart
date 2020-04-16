import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';

import '../constant/page_const.dart';
import '../constant/string_const.dart';

/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//参考链接
Map<String, String> map = {
  PageConst.FACTORY_PAGE: StringConst.FACTORY_,
  PageConst.INSTANCE_PAGE: StringConst.SINGLE_,
  PageConst.BUILD_PAGE: StringConst.BUILDER_,
  PageConst.PROTOTYPE_PAGE: StringConst.PROTOTYPE_,
  PageConst.ADAPTER_PAGE: StringConst.ADAPTER_,
  PageConst.BRIDGE_PAGE: StringConst.BRIDGE_,
  PageConst.FILTER_PAGE: StringConst.FILTER_,
  PageConst.COMPOSITE_PAGE: StringConst.COMBINATION_,
  PageConst.DECORATOR_PAGE: StringConst.DECORATOR_,
  PageConst.FACADE_PAGE: StringConst.FACADE_,
  PageConst.FLYWEIGHT_PAGE: StringConst.FLYWEIGHT_,
  PageConst.PROXY_PAGE: StringConst.PROXY_,
  PageConst.DUTY_PAGE: StringConst.DUTY_,
  PageConst.COMMAND_PAGE: StringConst.COMMAND_,
  PageConst.INTERPRETER_PAGE: StringConst.INTERPRETER_,
  PageConst.ITERATOR_PAGE: StringConst.ITERATOR_,
  PageConst.MEDIATOR_PAGE: StringConst.MID_,
  PageConst.MEMENTO_PAGE: StringConst.MEMORY_,
  PageConst.OBSERVER_PAGE: StringConst.OBSERVER_,
  PageConst.STATE_PAGE: StringConst.STATE_,
  PageConst.STRATEGY_PAGE: StringConst.STRATEGY_,
  PageConst.TEMPLATE_PAGE: StringConst.TEMPLATE_,
};

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List();
    List<String> keys = map.keys.toList();
    for (int i = 0; i < map.length; i++) {
      String page = keys[i];
      String content = map[page];
      Widget w = _item(page: page, content: content);
      items.add(w);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.APP_NAME),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2,
        children: items,
      ),
    );
  }

  Widget _item({String content, String page}) => Container(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(page);
          },
          child: Card(
            elevation: 10,
            child: Center(
              child: Text(
                content,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        ),
      );
}
