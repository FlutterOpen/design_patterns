import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/midd/mid_mode.dart';

/// Created by NieBin on 2020-04-05
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
class MidPage extends StatefulWidget {
  @override
  _MidPageState createState() => _MidPageState();
}

class _MidPageState extends State<MidPage> {
  String _smallMing;
  String _wangContent;
  Student _small;

  Student _wang;
  Teacher _teacher;

  @override
  void initState() {
    super.initState();
    _small = SmallMing();
    _wang = OldWang();
    _teacher = MathTeacher(_small, _wang);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.MID_),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(_smallMing ?? ""),
                  FlatButton(
                    child: Text("批改小明作业"),
                    onPressed: () {
                      setState(() {
                        _smallMing = _small.writeHomework(
                            _teacher, "认真写的数学作业${DateTime.now().toUtc()}");
                      });
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(_wangContent ?? ""),
                  FlatButton(
                    child: Text("批改老王作业"),
                    onPressed: () {
                      setState(() {
                        _wangContent = _wang.writeHomework(
                            _teacher, "认真写的数学作业${DateTime.now().toUtc()}");
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
