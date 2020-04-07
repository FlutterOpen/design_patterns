/// Created by NieBin on 2020-04-07
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
//记忆内容
class Memory {
  String name;
  int age;

  @override
  String toString() {
    return "name: $name, age=$age";
  }
}

//记忆容器
class MemoryContainer {
  Memory _memory;

  Memory get memory => _memory;

  set memory(Memory m) {
    this._memory = m;
  }
}

//恢复过程
class XiaoMing {
  String name;
  int age;

  void restore(Memory memory) {
    this.name = memory.name;
    this.age = memory.age;
  }

  Memory createMemory() {
    Memory memory = Memory()
      ..name = this.name
      ..age = this.age;
    return memory;
  }

  @override
  String toString() {
    return "名字:$name, 年龄:$age";
  }
}
