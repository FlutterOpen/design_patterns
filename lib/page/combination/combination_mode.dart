import 'package:flutter/cupertino.dart';

/// Created by NieBin on 2020-03-23
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class Tree {
  double length;
  double radius;
  List<Tree> _subTrees;
  double depth;
  String name;

  Tree(
    this.name,
    this.length,
    this.radius,
    this.depth,
  ) {
    _subTrees = List();
  }

  void addTree(Tree tree) {
    _subTrees?.add(tree);
  }

  void remove(Tree tree) {
    _subTrees?.remove(tree);
  }

  List<Tree> get subTrees => _subTrees;

  @override
  String toString() {
    return "Tree(length:$length,rradius:$radius,depth:$depth) \n subTree.count=${_subTrees.length}";
  }
}

abstract class File {
  String name;

  File(this.name);

  void display();
}

class Folder extends File {
  List<File> _files;

  Folder(String name) : super(name) {
    _files = List();
  }

  void add(File file) {
    _files.add(file);
  }

  void remove(File file) {
    _files.remove(file);
  }

  @override
  void display() {
    print("This is folder: $name");
    for (File f in _files) {
      f.display();
    }
  }
}

class TextFile extends File {
  TextFile(String name) : super(name);

  @override
  void display() {
    debugPrint("This is text file: $name");
  }
}

class JpgFile extends File {
  JpgFile(String name) : super(name);

  @override
  void display() {
    debugPrint("This is jpg file: $name");
  }
}

class VideoFile extends File {
  VideoFile(String name) : super(name);

  @override
  void display() {
    debugPrint("This is video file: $name");
  }
}
