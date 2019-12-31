import 'package:flutter/material.dart';

/// 布局组件学习
class LayoutStudy extends StatefulWidget {
  @override
  _LayoutStudyState createState() => _LayoutStudyState();
}

class _LayoutStudyState extends State<LayoutStudy> {
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
                        Row(
                          children: <Widget>[
                            // 圆形图片
                            ClipOval(
                                child: Image.network(
                                    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1473433680,1137547671&fm=26&gp=0.jpg',
                                    width: 50,
                                    height: 50)),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Opacity(
                                  opacity: 0.6, // 60% 的透明度
                                  child: Image.network(
                                    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1473433680,1137547671&fm=26&gp=0.jpg',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 70,
                          margin: EdgeInsets.all(10),
                          child: PhysicalModel(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAlias, // 抗锯齿
                            child: PageView(
                              children: <Widget>[
                                _item("测试1", Colors.red),
                                _item("测试2", Colors.green),
                                _item("测试3", Colors.blue)
                              ],
                            ),
                          ),
                        ),
                        Image.network(
                          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1473433680,1137547671&fm=26&gp=0.jpg',
                          width: 30,
                          height: 30,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(5, 15, 0, 0),
                                hintText: "请输入姓名",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey))),
                        FractionallySizedBox(
                          widthFactor: 1,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(color: Colors.tealAccent),
                            child: Text('宽度撑满'),
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Image.network(
                                'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1473433680,1137547671&fm=26&gp=0.jpg',
                                width: 20,
                                height: 20),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Image.network(
                                  'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1473433680,1137547671&fm=26&gp=0.jpg',
                                  width: 30,
                                  height: 30),
                            )
                          ],
                        ),
                        Wrap(
                          spacing: 5, // 水平间距
                          runSpacing: 5, // 垂直间距
                          children: <Widget>[
                            _chip('Flutter'),
                            _chip('Java'),
                            _chip('Kotlin'),
                            _chip('python'),
                            _chip('php'),
                          ],
                        )
                      ],
                    )
                  : Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("高度拉满"),
                ),
              )
            ],
          )),
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

  _chip(String label) {
    return Chip(
        label: Text(label),
        avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900,
          child: Text(label.substring(0, 1)),
        ));
  }
}
