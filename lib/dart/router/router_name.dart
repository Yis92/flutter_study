import 'package:flutter/material.dart';
import 'package:flutter_study/dart/router/router_one.dart';

/// 命名路由跳转
class RouterNameJump extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('命名路由跳转'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Text('命名路由跳转'),
      ),
      routes: {
        'routerName': (context) => new RouterNameJump(),
        "router_name2": (context) => new RouterOne()
      },
    );
  }
}
