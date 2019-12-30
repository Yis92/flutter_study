import 'package:flutter/material.dart';

class StatelessStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "学习StatelessStudy",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("学习StatelessStudy"),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          // 居中
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text("第一行"),
              Text("第二行"),
              Icon(
                Icons.android,
                size: 50,
                color: Colors.red,
              ),
              CloseButton(),
              BackButton(
                color: Colors.blue,
              ),
              Chip(avatar: Icon(Icons.people), label: Text('我是好人')),
              Divider(
                color: Colors.red,
                indent: 10, // 左侧间距
                endIndent: 10, // 右侧间距
                height: 10, // 容器高度，不是线的高度
              ),
              Card(
                  color: Colors.red,
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text("提交测试"),
                  )),
              AlertDialog(title: Text("你好"), content: Text("你是一个糟老头子吗？"))
            ],
          ),
        ),
      ),
    );
  }
}
