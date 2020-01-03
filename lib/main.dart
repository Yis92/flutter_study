import 'package:flutter/material.dart';
import 'package:flutter_study/dart/RouterUtils.dart';
import 'package:flutter_study/dart/layout_study.dart';
import 'package:flutter_study/dart/router/router_main.dart';
import 'package:flutter_study/dart/simple/lifecycle/app_lifecycle.dart';
import 'package:flutter_study/dart/simple/lifecycle/flutter_lifecycle.dart';
import 'package:flutter_study/dart/simple/launcher_app.dart';
import 'package:flutter_study/dart/simple/res_page.dart';
import 'package:flutter_study/dart/simple/update_theme.dart';
import 'package:flutter_study/dart/stateful_study.dart';

import 'dart/StatelessStudy.dart';
import 'dart/cupertino_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dart 学习'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  child: Text('StatelessStudy'),
                  onPressed: () {
                    jumpPage(context, StatelessStudy());
                  },
                ),
                Container(
                  child: FlatButton(
                    color: Colors.tealAccent,
                    child: Text('stateful_study'),
                    onPressed: () {
                      jumpPage(context, StatefulStudy());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    color: Colors.amber,
                    child: Text('布局控件学习'),
                    onPressed: () {
                      jumpPage(context, LayoutStudy());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    color: Colors.cyanAccent,
                    child: Text('路由跳转'),
                    onPressed: () {
                      jumpPage(context, RouterMain());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('iOS 系统风格'),
                    color: Colors.blue,
                    onPressed: () {
                      jumpPage(context, CupertinoDemo());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('加载本地资源'),
                    color: Colors.deepOrange,
                    onPressed: () {
                      jumpPage(context, ResPage());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('打开第三方应用'),
                    color: Colors.cyan,
                    onPressed: () {
                      jumpPage(context, LauncherApp());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('Flutter 生命周期管理'),
                    color: Colors.amber,
                    onPressed: () {
                      jumpPage(context, FlutterLifecycle());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('Flutter app 应用生命周期管理'),
                    color: Colors.cyanAccent,
                    onPressed: () {
                      jumpPage(context, AppLifecycle());
                    },
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('动态修改 app 主题'),
                    color: Colors.deepOrange,
                    onPressed: () {
                      jumpPage(context, UpdateTheme());
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
