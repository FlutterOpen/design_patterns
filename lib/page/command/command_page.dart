import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/command/command_mode.dart';

/// Created by NieBin on 2020-03-31
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class CommandPage extends StatefulWidget {
  @override
  _CommandPageState createState() => _CommandPageState();
}

class _CommandPageState extends State<CommandPage> {
  AudioPlayer _player;

  @override
  initState() {
    super.initState();
    _player = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.COMMAND_),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _button(
                icon: Icons.pause,
                callback: () {
                  PointerInvoker invoker = PointerInvoker();
                  invoker.command = PauseCommand(_player);
                  invoker.execute();
                },
                color: Colors.red),
            _button(
                icon: Icons.stop,
                callback: () {
                  PointerInvoker invoker = PointerInvoker();
                  invoker.command = StopCommand(_player);
                  invoker.execute();
                },
                color: Colors.red),
            _button(
                icon: Icons.play_arrow,
                callback: () {
                  PointerInvoker invoker = PointerInvoker();
                  invoker.command = PlayCommand(_player);
                  invoker.execute();
                },
                color: Colors.red),
            _button(
                icon: Icons.skip_next,
                callback: () {
                  PointerInvoker invoker = PointerInvoker();
                  invoker.command = NextCommand(_player);
                  invoker.execute();
                },
                color: Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _button({
    IconData icon,
    VoidCallback callback,
    Color color = Colors.white,
  }) =>
      FlatButton(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            icon,
            size: 30,
          ),
        ),
        onPressed: callback,
        shape: CircleBorder(),
      );
}
