import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/adapter/adapter_page.dart';
import 'package:flutter_design/page/bridge/bridge_page.dart';
import 'package:flutter_design/page/combination/combination_page.dart';
import 'package:flutter_design/page/command/command_page.dart';
import 'package:flutter_design/page/decorator/decorator_page.dart';
import 'package:flutter_design/page/duty/duty_page.dart';
import 'package:flutter_design/page/facade/facade_page.dart';
import 'package:flutter_design/page/filter/filter_page.dart';
import 'package:flutter_design/page/flyweight/flyweight_page.dart';
import 'package:flutter_design/page/interpreter/intepreter_page.dart';
import 'package:flutter_design/page/iterator/Iterator_page.dart';
import 'package:flutter_design/page/memory/memory_page.dart';
import 'package:flutter_design/page/midd/mid_page.dart';
import 'package:flutter_design/page/observer/observer_page.dart';
import 'package:flutter_design/page/proxy/proxy_page.dart';

import 'constant/page_const.dart';
import 'constant/string_const.dart';
import 'page/_page.dart';

///{link https://www.runoob.com/design-pattern/design-pattern-tutorial.html}
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
        PageConst.FACTORY_PAGE: (context) => FactoryPage(),
        PageConst.INSTANCE_PAGE: (context) => SinglePage(),
        PageConst.BUILD_PAGE: (context) => BuilderPage(),
        PageConst.PROTOTYPE_PAGE: (context) => PrototypePage(),
        PageConst.ADAPTER_PAGE: (context) => AdapterPage(),
        PageConst.BRIDGE_PAGE: (context) => BridgePage(),
        PageConst.FILTER_PAGE: (context) => FilterPage(),
        PageConst.COMPOSITE_PAGE: (context) => CombinationPage(),
        PageConst.DECORATOR_PAGE: (context) => DecoratorPage(),
        PageConst.FACADE_PAGE: (context) => FacadePage(),
        PageConst.FLYWEIGHT_PAGE: (context) => FlyweightPage(),
        PageConst.PROXY_PAGE: (context) => ProxyPage(),
        PageConst.DUTY_PAGE: (context) => DutyPage(),
        PageConst.COMMAND_PAGE: (context) => CommandPage(),
        PageConst.INTERPRETER_PAGE: (context) => InterpreterPage(),
        PageConst.ITERATOR_PAGE: (context) => IteratorPage(),
        PageConst.MEDIATOR_PAGE: (context) => MidPage(),
        PageConst.MEMENTO_PAGE: (context) => MemoryPage(),
        PageConst.OBSERVER_PAGE: (context) => ObserverPage(),
      },
    );
  }
}
