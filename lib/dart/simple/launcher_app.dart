import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

/// 如何打开第三方app应用
class LauncherApp extends StatefulWidget {
  @override
  _LauncherAppState createState() => _LauncherAppState();
}

class _LauncherAppState extends State<LauncherApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('如何打开第三方app应用'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('打开一个网页'),
                color: Colors.cyanAccent,
                onPressed: () {
                  _launcherURL();
                })
          ],
        ),
      ),
    );
  }
}

_launcherURL() async {
//  const url = 'https://pub.dev/packages/url_launcher/versions';
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    throw 'Could not launcher$url';
//  }
}

_openMap() async {
//  const url = 'geo:52.32,4.197';
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    const url = 'http://maps.apple.com/?ll=52.32,4.197';
//  }
}
