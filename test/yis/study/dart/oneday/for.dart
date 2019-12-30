void main() {
  List<int> list = [1, 2, 3, 4, 5, 6];

  //1
  for (int i = 0; i < list.length; i++) {
    print("第一种for循环遍历：${list[i]}");
  }

  //2
  for (var i in list) {
    print("第二种for循环遍历：$i");
  }

  //3
  list.forEach((i) {
    print("第三种for循环遍历：$i");
  });
}
