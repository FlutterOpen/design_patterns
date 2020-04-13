import 'package:flutter/material.dart';
import 'package:flutter_design/page/observer/observer_mode.dart';

/// Created by NieBin on 2020-04-13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class ObserverPage extends StatefulWidget {
  @override
  _ObserverPageState createState() => _ObserverPageState();
}

class _ObserverPageState extends State<ObserverPage> {
  List<IObserver> _observers;
  RealSubject _subject;

  @override
  void initState() {
    _observers = List();
    _subject = RealSubject();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("观察者模式"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("添加A型观察者"),
              ),
              onPressed: () {
                _subject.attach(AObserver());
              },
            ),
            SizedBox(height: 10),
            FlatButton(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("添加B型观察者"),
              ),
              onPressed: () {
                _subject.attach(BObserver());
              },
            ),
            SizedBox(height: 10),
            FlatButton(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("发个消息通知大家"),
              ),
              onPressed: () {
                _subject.name = "诸国缸体";
                _subject.notify();
              },
            ),
          ],
        ),
      ),
    );
  }
}
