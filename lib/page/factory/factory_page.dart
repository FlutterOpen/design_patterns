import 'package:flutter/material.dart';
import 'package:flutter_design/page/factory/color_concrete.dart';
import 'package:flutter_design/page/factory/factory_abstract.dart';
import 'package:flutter_design/page/factory/factory_concrete.dart';
import 'package:flutter_design/page/factory/shape_concrete.dart';

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
            Container(
              color: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "下面是普通工厂的演示",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
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
            Container(
              color: Colors.brown,
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "下面是抽象工厂的演示",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            FlatButton(
              child: Text(
                "点击一下看看打印日志",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.brown,
              onPressed: () {
                //获取颜色工厂
                IFactory colorFactory =
                    FactoryProducer.createFactory(FType.Color);
                IColor color = colorFactory.getColor(ColorType.Yellow);
                color.fill();

                //创建形状的工厂实例
                IFactory shapeFactory =
                    FactoryProducer.createFactory(FType.Shape);
                IShape shape = shapeFactory.getShape(ShapeType.Triangle);
                shape.draw();
              },
            )
          ],
        ),
      ),
    );
  }
}
