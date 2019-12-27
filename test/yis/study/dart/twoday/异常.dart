
void test() {
  throw "你太帅了，不给你调用!";

}


int test1(int i){
  if(i == 0){
    throw "1";
  } else if(i == 1){
    throw print;

  }
  return 3;
}

void main(){
  //介绍catch的参数
  try {
    test();
  }catch(e,s){
    //e: 就是抛出的异常对象
//    print(e.runtimeType);
//    print(e);
    //s: StackTrace 调用栈信息
//    print(s.runtimeType);
//    print(s);
  }

  //根据不同的异常类型 进行不同的处理
  // on TYPE catch....
  try {
    test();
  } on Exception  catch(e,s){
    print("Exception");
  } on int catch(e){
    print("int");
  } on String catch(e){
    print("String");
  }

  try{
    int r = test1(1);
    if(r == 1){
      //......
    }
  } on Function catch(e){
    e("11111");
    //.......
  } on String catch(e){
    print("String");
    //......
  } finally{

  }

}