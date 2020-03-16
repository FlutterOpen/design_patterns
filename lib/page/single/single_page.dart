import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/single/single_manager.dart';

/// Created by NieBin on 2020-03-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
class SinglePage extends StatefulWidget {
  @override
  _SinglePageState createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.SINGLE_),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "${SingleManager.instance.count ?? "没有数据"}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.red),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.do_not_disturb_on,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      SingleManager.instance.count -= 5;
                    });
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add_circle,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      SingleManager.instance.count += 5;
                    });
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
