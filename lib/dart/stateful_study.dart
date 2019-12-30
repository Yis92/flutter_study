import 'package:flutter/material.dart';

class StatefulStudy extends StatefulWidget {
  @override
  _StatefulStudyState createState() => _StatefulStudyState();
}

class _StatefulStudyState extends State<StatefulStudy> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("学习stateful")),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    activeIcon: Icon(
                      Icons.home,
                      color: Colors.blue,
                    ),
                    title: Text("首页")),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list,
                      color: Colors.grey,
                    ),
                    activeIcon: Icon(
                      Icons.list,
                      color: Colors.blue,
                    ),
                    title: Text("列表")),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.mood,
                      color: Colors.grey,
                    ),
                    activeIcon: Icon(
                      Icons.mood,
                      color: Colors.blue,
                    ),
                    title: Text("我的"))
              ]),
          floatingActionButton: FloatingActionButton(
            child: Text("点我"),
            onPressed: null,
          ),
          body: _currentIndex == 0
              ? RefreshIndicator(child: ListView(), onRefresh: handlerRefresh)
              : _currentIndex == 1
                  ? Column(
                      children: <Widget>[
                        Container(
                          height: 150,
                          margin: EdgeInsets.only(bottom: 20),
                          decoration:
                          BoxDecoration(color: Colors.lightBlueAccent),
                          child: PageView(
                            children: <Widget>[
                              _item("测试1", Colors.red),
                              _item("测试2", Colors.green),
                              _item("测试3", Colors.blue)
                            ],
                          ),
                        ),
                        Image.network(
                          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1473433680,1137547671&fm=26&gp=0.jpg',
                          width: 200,
                          height: 200,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(5, 50, 0, 0),
                                hintText: "请输入姓名",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey)))

                      ],
                    )
                  : Text("我的页面")),
    );
  }

  Future<Null> handlerRefresh() async {
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }

  _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(title, style: TextStyle(fontSize: 22, color: Colors.white)),
    );
  }
}
