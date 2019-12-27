//可选位置参数
void fun(int k,[int i = 1, int j = 2]) {
  print(k);
  print(i);
  print(j);
}

//可选命名参数
void fun1({int i = 1, int j = 2}) {
  print("i==$i j==$j");
}
//都可以设置默认参数值

void main() {
  //如果想给j传值，就必须保证要给i传值， 因为 位置！！！！
  fun(10, 3);

  fun1(j: 10);
  fun1(j: 10, i: 11);

  //不需要再像java一样，写一大堆的重载函数，并且能够提供参数默认值。
}
