import 'package:flutter/material.dart';

/// App flutter 生命周期
class AppLifecycle extends StatefulWidget {
  @override
  _AppLifecycleState createState() => _AppLifecycleState();
}

class _AppLifecycleState extends State<AppLifecycle>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App flutter 生命周期')),
        body: Center(),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.inactive) {
      // 不常用：应用程序处于非活动状态，并且未接收用户输入时调用，比如：来了个电话
      print("========inactive========");
    } else if (state == AppLifecycleState.suspending) {
      // 不常用：应用程序被挂起时调用，它不会在 iOS 上触发
    } else if (state == AppLifecycleState.paused) {
      print("========paused 进入后台========");
    } else if (state == AppLifecycleState.resumed) {
      print("========paused 进入前台========");
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
}
