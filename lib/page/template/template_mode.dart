/// Created by NieBin on 2020-04-16
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class IWork {
  void start();

  void working();

  void end();

  void work() {
    start();
    working();
    end();
  }
}

class NieBin extends IWork {
  @override
  void end() {
    print("加班后下班");
  }

  @override
  void start() {
    print("从上海地铁站上站");
  }

  @override
  void working() {
    print("进行Flutter开发");
  }
}

class Other extends IWork {
  @override
  void end() {
    print("开开心心下班");
  }

  @override
  void start() {
    print("从公司附近出发");
  }

  @override
  void working() {
    print("进行前端开发");
  }
}
