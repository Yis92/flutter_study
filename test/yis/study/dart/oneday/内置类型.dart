void main() {
  /**
   * 1、数值
   */
  //dart 当中的int， 在编码的时候 可以将int 当成java的 short int long来使用
  // 如果 我们写的dart代码超过了4个字节 ，那么dart会将其编译成类似java当中的long
  // 否则编译成 java当中的short或者int
  int i = 10;
  print(i.bitLength);

  /**
   * 2、字符串
   */
  //2.1格式化
  String str = "快扶我去大保健!";

  int num = 11;
  String txt = "${str}s我要找$num号技师";
  print(txt);

  //2.2 单双引号声明
  String s = '快扶我去天之道!';
  String s1 = "\"test\"";
  String s2 = '"test"';
  String s3 = "'test'";

  String s4 = "\\n";
  //r前缀 raw:原始
  s4 = r"\n";

  //2.2多行字符串的声明
  String s5 = """ssss 
  ssss
  ssss
  ssdfsad
  dsfsdfsd
  sdfsd
  """;

  /**
   * 3、布尔类型
   */
  bool b = false;

  /**
   * 4、List 数组
   */
  List<String> list = new List();

  List<int> list1 = [1, 2, 3, 4, 5];
  //像java数组一样通过下标取元素
//  int item0 = list1[0];

  // 遍历数组
  //iter for-in 模板 下表从1开始 注意减1
  for (var o in list1) {}
  //itar for-i模板
  for (var j = 0; j < list1.length; ++j) {}

  // list对象不可变
  // const 修饰的是[1,2,3]这一个对象，表示这个对象不可变,不能再add元素了
  List<int> list2 = const [1, 2, 3];
//  list2.add(1); todo 错误
  list2 = [2, 3, 4];

  //const 修饰的是变量，也就是引用，那么变量就不能够再重新引用其他的对象了,
  // 也不允许add元素了
  const List<int> list3 = [1, 2, 3];
//  list3 = [3,4]; todo 错误
//  list3.add(11); todo 错误

  List<dynamic> dyList = ["haha", 1, 2.1];

  List.generate(3, (index) => index * 2);

  /**
   * 映射集合 map
   */
  Map<int, int> map = {1: 1, 2: 2, 3: 3};
  print(map[1]);
  //修改value
  map[1] = 100;
  //用const声明和 list是一样的

  var map1 = {1: 1, 2: 2};
  //添加元素
  map1[3] = 100;

  print(map1[3]);
  //没有的key 返回null
  print(map1[4]);

  //迭代器的遍历
  var keys = map1.keys;
  print(map1);

  ///map遍历
  map.forEach((k,v){
    print("map 的key是$k value是$v");
  });

  for (var k in map.keys) {
    print("map 中的key是 $k");
  }


  /**
   * Runes ： 特殊字符表示类 （Unicode32）
   */
  var clapping = '\u{8F8F1}';

  ///5个16进制 需要使用{}
  print(clapping); //👏
//获得 16位代码单元
  print(clapping.codeUnits); //[55357, 56399]
//获得unicode代码
  print(clapping.runes.toList()); //[128079]

//fromCharCode 根据字符码创建字符串
  print(String.fromCharCode(128079));
  print(String.fromCharCodes(clapping.runes));
  print(String.fromCharCodes([55357, 56399]));
  print(String.fromCharCode(0x1f44f));

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(String.fromCharCodes(input));


  /**
   * Symbols 标识符
   */
  var a = #sadsad;
  switch (a) {
    case #A:
      break;
    case #sadsad:
      break;
  }
}
