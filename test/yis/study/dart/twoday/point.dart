//包括类的定义 如果使用 _开头 意味着这个类是private
class  Point{
  //使用 _ 开始命名的变量 就是Java的 private
  int _x;
  int y;

  Point(this._x,this.y);

//  Point({int x,int y}){
//
//  }


  // 命名构造方法  命名更加直观的表示这个构造方法的作用与特性
  Point.Cool(int y){
    this. y = y;
    print("我好帅啊!");
  }
  Point.X(this._x);

  //参数初始化列表 初始化你类当中的属性 可以不写方法体
  Point.fromMap(Map map):_x=map['x'],y=map['y'];

}

class View{
  View(int context,int attr);
  //重定向构造方法
  View.a(int context):this(context,0);

  //Java写法
//  View(int context){
//    this(context,0);
//  }
}


class ImmutabelPoint{
  final int x;
  final int y;
  // 常量构造方法
  const ImmutabelPoint(this.x,this.y);
}



class Manager{
  int i;
  static Manager _instance;
  // 工厂构造方法 必须返回一个 实例对象
  factory Manager.getInstance(){
    if(_instance == null){
      _instance = new Manager._newInstance();
    }
    return _instance;
  }

//  static Manager get2(){
//    return new Manager();
//  }

  //私有的 private的
  Manager._newInstance();

}




void main(){
  //使用  new 来创建 常量构造方法的 对象 就和普通的对象没有区别
  //使用const 来创建多个对象，传递参数一样 表示 这几个对象是同一个 编译期常量 对象 （必须定义常量构造函数）
  var p1 = const ImmutabelPoint(1,1);
  var p2 = const ImmutabelPoint(1,1);
  print(p1.hashCode == p2.hashCode);
  print(p1 == p2);


  /**
   * 工厂构造方法
   */
  new Manager.getInstance();

}





