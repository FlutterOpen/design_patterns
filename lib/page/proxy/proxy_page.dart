import 'package:flutter/material.dart';
import 'package:flutter_design/constant/string_const.dart';
import 'package:flutter_design/page/proxy/proxy_mode.dart';

/// Created by NieBin on 2020-03-27
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

class ProxyPage extends StatefulWidget {
  @override
  _ProxyPageState createState() => _ProxyPageState();
}

class _ProxyPageState extends State<ProxyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst.PROXY_),
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            color: Colors.brown,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("购买手机"),
            ),
            onPressed: () {
              BuyProduct product = ProxyBuy();
              product.buyPhone();
            },
          ),
        ),
      ),
    );
  }
}
