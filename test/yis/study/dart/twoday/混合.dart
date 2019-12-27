//被mixin(混入)的类不能有构造函数
class A  {
  void a(){
    print("A  的a方法!");
  }
}

class B{
  void b(){
    print("b方法");
  }
  void a(){
    print("B  的a方法!");
  }
}


// 满足了我们的多继承的需求
class C with  B,A{

  void c(){

  }
  // 重写了 混入类的a方法
  void a(){

  }
}

//C 就是A B的混合类
//class C = Object with A, B;


void main(){
  //1、自身是第一优先级
  //2、如果自身没有对应的方法，就从with最右边开始查找方法
  var c = new C();
  c.a();



}