/// Created by NieBin on 2020-03-30
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
class MessageModel {
  final String message;
  final int level;

  MessageModel(this.message, this.level);
}

abstract class IHandler {
  static const int LEVEL_ONE = 1;
  static const int LEVEL_TWO = 2;
  static const int LEVEL_THREE = 3;
  int level = LEVEL_ONE;
  IHandler _nextHandler;

  IHandler(this.level);

  set nextHandler(IHandler handler) => _nextHandler = handler;

  void sendMessage(MessageModel model);

  void hand(MessageModel model) {
    if (model.level == level) {
      this.sendMessage(model);
    } else {
      if (_nextHandler != null) {
        print("正在发送到下一级");
        _nextHandler.hand(model);
      } else {
        //实在找不到人，先改下
        print("已经到达顶级了");
        this.sendMessage(model);
      }
    }
  }
}

class EarthHandler extends IHandler {
  EarthHandler() : super(IHandler.LEVEL_ONE);

  @override
  void sendMessage(MessageModel model) {
    print("我是地球，我已经收到: ${model.message}");
  }
}

class MoonHandler extends IHandler {
  MoonHandler() : super(IHandler.LEVEL_TWO);

  @override
  void sendMessage(MessageModel model) {
    print("我是月亮，我已经收到: ${model.message}");
  }
}

class SunHandler extends IHandler {
  SunHandler() : super(IHandler.LEVEL_THREE);

  @override
  void sendMessage(MessageModel model) {
    print("我是太阳，我已经收到: ${model.message}");
  }
}
