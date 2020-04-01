import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/interpreter/interpreter_mode.dart';

/// Created by NieBin on 2020-04-01
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class InterpreterPage extends StatefulWidget {
  @override
  _InterpreterPageState createState() => _InterpreterPageState();
}

class _InterpreterPageState extends State<InterpreterPage> {
  Value _value1 = Value(0);
  Value _value2 = Value(0);
  Add _add;
  Minus _minus;
  Multiple _multiply;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.INTERPRETER_),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("变量1"),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(height: 40),
                    child: TextFormField(
                      onChanged: (v) {
                        _value1 = Value(int.parse(v));
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("变量2"),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(height: 40),
                    child: TextFormField(
                      onChanged: (v) {
                        _value2 = Value(int.parse(v));
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Icon(Icons.add),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        print("v1=$_value1,v2=$_value2}");
                        _add = Add(_value1, _value2);
                      });
                    },
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text("加法=${_add?.interpret()}"))
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.brown,
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Icon(Icons.remove),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        print("v1=$_value1,v2=$_value2}");
                        _minus = Minus(_value1, _value2);
                      });
                    },
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text("减法=${_minus?.interpret()}"))
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              color: Colors.brown,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Icon(Icons.clear),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        print("v1=$_value1,v2=$_value2}");
                        _multiply = Multiple(_value1, _value2);
                      });
                    },
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text("乘法=${_multiply?.interpret()}"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
