
class Point{
  //每一个实例属性 变量都会有一个隐式的 get，非final 还有 set
  int _x;
  int _y;

  //x 是方法名
  int get x => _x;

  set x(int x) => _x = x;

  //运算符重载， 定义+ 操作的行为
  Point operator +(Point othre){
    var point = new Point();
    point._x = _x + othre.x;
    return point;
  }

  String operator -(int x){
   return "hahahaha";
  }


}






class Test{
  void ass(){}

  void  fff(){}

  void call(int ){

  }
}





void main(){
//  var point = new Point();
//  //  get
//  print(point.xxxxx);
//  // set
//  point.bbbbbbb = 10;


  var p1 = Point();
  var p2 = Point();
  p1.x = 10;
  p2.x = 20;

  var p3= p1 + p2;
  p3 = p1 + p2 + p3;

  print(p3.x);

  //灵活......
  String str = p3 - 1;
  print(str);


  Test test = Test();

  test(1);
}

