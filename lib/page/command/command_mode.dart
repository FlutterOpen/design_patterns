import 'package:flutter/cupertino.dart';

/// Created by NieBin on 2020-03-31
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
//接收角色
class AudioPlayer {
  void play() {
    debugPrint("播放音乐");
  }

  void stop() {
    debugPrint("停止播放音乐");
  }

  void pause() {
    debugPrint("暂停播放音乐");
  }

  void nextPlay() {
    debugPrint("播放下一首");
  }
}

//命令角色
abstract class Command {
  void execute();
}

class PlayCommand implements Command {
  AudioPlayer player;

  PlayCommand(this.player);

  @override
  void execute() {
    player?.play();
  }
}

class StopCommand implements Command {
  AudioPlayer player;

  StopCommand(this.player);

  @override
  void execute() {
    player?.stop();
  }
}

class PauseCommand implements Command {
  AudioPlayer player;

  PauseCommand(this.player);

  @override
  void execute() {
    player?.pause();
  }
}

class NextCommand implements Command {
  AudioPlayer player;

  NextCommand(this.player);

  @override
  void execute() {
    player?.nextPlay();
  }
}

//手势调用命令
class PointerInvoker {
  Command _command;

  set command(Command command) => _command = command;

  void execute() {
    _command.execute();
  }
}
