import 'package:flutter/material.dart';
import 'package:flutter_design/page/factory/factory_concrete.dart';

import '../../constant/string_const.dart';

/// Created by NieBin on 2020-03-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
class FactoryPage extends StatefulWidget {
  @override
  _FactoryPageState createState() => _FactoryPageState();
}

class _FactoryPageState extends State<FactoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.FACTORY_),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Android"),
            Divider(
              height: 1,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child:
                  DesFactory.createPlatformText(P.Android).text("我是Android的描述"),
            ),
            Text("Ios"),
            Divider(
              height: 1,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: DesFactory.createPlatformText(P.Ios).text("我是Ios的描述"),
            ),
            Text("Web"),
            Divider(
              height: 1,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: DesFactory.createPlatformText(P.Web).text("我是Web的描述"),
            ),
          ],
        ),
      ),
    );
  }
}
