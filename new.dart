import 'dart:io';

List<String> username = ["user1", "user2"];
List<int> prod_id = [1, 2, 3, 4, 5];
List<String> product_name = [
  "product1",
  "product2",
  "product3",
  "product4",
  "product5"
];
List<int> qty = [10, 23, 34, 20, 30];
List<int> rate = [100, 200, 300, 400, 350];
List<int> dis = [10, 20, 30, 40, 50];

var userdata = {};
var productdata = {
  "prod_id": prod_id,
  "product_name": product_name,
  "qty": qty,
  "rate": rate,
  "dis": dis,
};
cart() {}
product() {
  print("****** product******");
  var n = productdata['prod_id'];
  print(n);

  for (var i = 0; i < prod_id.length; i++) {
    if (i == 0) {
      for (var key in productdata.keys) {
        stdout.write(key);
        stdout.write("\t");
      }
      print("");
    }

    for (var key in productdata.keys) {
      stdout.write(productdata[key]?[i]);
      stdout.write("\t\t");
    }
    print("");
  }
}

login() {
  print("********* login ************");
  print("enter name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if ("user" == u) {
      for (var udata in userdata[u]) {
        print("$name=>$udata ");
        if (name == udata) {
          print(" user login");
          product();
        }
      }
    }
  }
}

register() {
  login();
}

void main() {
  register();
}
