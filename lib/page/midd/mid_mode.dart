/// Created by NieBin on 2020-04-05
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

///普通类
abstract class Student {
  String writeHomework(Teacher teacher, String content);
}

///中介者
abstract class Teacher {
  final Student smallMing;
  final Student oldWang;

  Teacher(this.smallMing, this.oldWang);

  String readSmallMing(String content);

  String readOldWang(String content);
}

///小明
class SmallMing extends Student {
  @override
  String writeHomework(Teacher teacher, String content) {
    return teacher.readSmallMing("小明写的内容: $content");
  }
}

///隔壁老王
class OldWang extends Student {
  @override
  String writeHomework(Teacher teacher, String content) {
    return teacher.readOldWang("老王写的内容: $content");
  }
}

class MathTeacher extends Teacher {
  MathTeacher(Student smallMing, Student oldWang) : super(smallMing, oldWang);

  @override
  String readOldWang(String content) {
    return "我正在看隔壁老王的作业: $content";
  }

  @override
  String readSmallMing(String content) {
    return "我正在看搞笑小明的作业: $content";
  }
}
