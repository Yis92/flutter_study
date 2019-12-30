import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

///常用数据类型
class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_numType().toString(),
          style: TextStyle(color: ColorUtil.color("#EF5350"))),
    );
  }

  ///数字类型
  num _numType() {
    num nn = 1222;

    String a = '23';
    bool a1 = true;

    var list = List<int>();
    list.add(1);
    int iiii = list.length;

    List<dynamic> list1 = [11, '213', "213"];

    return nn;
  }

  void aa([int a, String b]) {}

  void bb({int a, String b}) {}

  void cc () {
    aa(1);
    bb(b:"4");
  }
}
