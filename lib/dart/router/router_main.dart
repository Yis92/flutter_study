import 'package:flutter/material.dart';
import 'package:flutter_study/dart/router/router_name.dart';
import 'package:flutter_study/dart/router/router_one.dart';

class RouterMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('路由学习')),
        body: Column(
          children: <Widget>[
            Container(
              child: FlatButton(
                color: Colors.red,
                child: Text("点我跳转"),
                onPressed: () async {
                  var result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return RouterOne(title: '酒哈');
                    }),
                  );
                  print("返回=====$result");
                },
              ),
            ),
            FlatButton(
              child: Text('命名路由方式跳转'),
              color: Colors.blue,
              onPressed: () {
              Navigator.pushNamed(context, "routerName");
              },
            )
          ],
        ),
      ),
    );
  }
}
