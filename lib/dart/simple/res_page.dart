import 'package:flutter/material.dart';

class ResPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(title: Text('加载本地资源')),
        body: Container(
          child: Image.asset("images/desk_logo.jpg"),
        ),
      ),
    );
  }
}
