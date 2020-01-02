import 'package:flutter/material.dart';

class RouterOne extends StatelessWidget {
  String title;

  RouterOne({@required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('路由第一个界面')),
        body: Column(
          children: <Widget>[
            Text("接收到的参数值为：$title"),
            Container(
              child: RaisedButton(
                child: Text('返回上一个页面'),
                onPressed: () {
                  Navigator.pop(context, "我是带回的参数值：礼尚往来");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
