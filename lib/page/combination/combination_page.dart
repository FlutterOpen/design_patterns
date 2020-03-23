import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/combination/combination_mode.dart';

/// Created by NieBin on 2020-03-23
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class CombinationPage extends StatefulWidget {
  @override
  _CombinationPageState createState() => _CombinationPageState();
}

class _CombinationPageState extends State<CombinationPage> {
  Tree root;

  @override
  void initState() {
    initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.COMBINATION_),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: _items(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Folder folder = Folder("设计文档");
          File txtFile = TextFile("readme.txt");
          File jpg = JpgFile("切图.jpg");
          File video = VideoFile("交互动画.mp4");

          folder.add(txtFile);
          folder.add(jpg);
          folder.add(video);
          folder.display();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }

  List<Widget> _items() {
    List<Widget> list = List();
    list.add(_branchItem(root));
    for (Tree tree in root.subTrees) {
      list.add(Divider(
        color: Colors.blue,
      ));
      list.add(_branchItem(tree));
    }
    return list;
  }

  Widget _branchItem(Tree tree) => Container(
        child: Column(
          children: <Widget>[
            Text("分支名: ${tree.name}"),
            Text("长度: ${tree.length}"),
            Text("有多粗: ${tree.radius}"),
            Text("深度: ${tree.depth}"),
          ],
        ),
      );

  void initData() {
    root = Tree("Root", 100, 10, 0);
    for (int i = 0; i < 10; i++) {
      root.addTree(Tree("Branch$i", 50, 5, 1));
    }
    print("Root:${root.toString()}");
  }
}
