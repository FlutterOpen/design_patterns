import 'package:flutter/material.dart';
import 'package:flutter_design/page/template/template_mode.dart';

/// Created by NieBin on 2020-04-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class TemplatePage extends StatefulWidget {
  @override
  _TemplatePageState createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("模版模式"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NieBin的工作日常"),
              ),
              onPressed: () {
                NieBin nb = NieBin();
                nb.work();
              },
            ),
            FlatButton(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("其他人的工作日常"),
              ),
              onPressed: () {
                Other other = Other();
                other.work();
              },
            ),
          ],
        ),
      ),
    );
  }
}
