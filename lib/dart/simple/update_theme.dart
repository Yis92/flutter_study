import 'package:flutter/material.dart';

/// 动态修改主题
class UpdateTheme extends StatefulWidget {
  @override
  _UpdateThemeState createState() => _UpdateThemeState();
}

class _UpdateThemeState extends State<UpdateTheme> {
  var _myTheme = Brightness.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: _myTheme, primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('动态修改主题'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('切换主题'),
            color: Colors.blue,
            onPressed: () {
              setState(() {
                if (_myTheme == Brightness.light) {
                  _myTheme = Brightness.dark;
                } else {
                  _myTheme = Brightness.light;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
