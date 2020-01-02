import 'package:flutter/cupertino.dart';

/// iOS系统 Cupertino 风格
class CupertinoDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino风格'),
      ),
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: Text('press'),
          onPressed: () {},
        ),
      ),
    );
  }
}
