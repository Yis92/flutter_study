import 'package:flutter/material.dart';

/// flutter 生命周期管理
class FlutterLifecycle extends StatefulWidget {
  @override
  _FlutterLifecycleState createState() {
    print("createState__________");
    return _FlutterLifecycleState();
  }
}

class _FlutterLifecycleState extends State<FlutterLifecycle> {
  @override
  void initState() {
    super.initState();
    print("initState_____________");
  }

  @override
  Widget build(BuildContext context) {
    print("build_____________");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter 生命周期管理'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('点我'),
              color: Colors.cyan,
              onPressed: () {
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies-------------");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose----------");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate--------------");
  }

  @override
  void didUpdateWidget(FlutterLifecycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget--------------");
  }
}
