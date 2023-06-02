userData() {
  print("hello");
}

fun(var n) => n * 2;

ListData(list) {
  print(list);
  for (var i in list) {
    print(i);
  }
}

main() {
  userData();
  print(fun(3));
  var list = [1, 2, 4, 3, 5];
  list.forEach((e) {
    print(e);
  });
  list.map((e) => print(e));
  ListData(list);
}
