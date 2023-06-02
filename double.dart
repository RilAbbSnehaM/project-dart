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

int productcheck(String product) {
  print(product);

  int pos = -1;

  var proname = productdata['product_name'];
  print(proname);
  for (var i = 0; i < product_name.length; i++) {
    if ('proname[i]' == product) {
      pos = i;
      break;
    }
  }
  return pos;
}

void cart() {
  print("************cart***********");
  var productname = stdin.readLineSync();
  print(productname);
  var pos = productcheck("product");

  print(productdata);
  print(pos);
  productcheck("product");
}

void products() {
  print("****** product ******");
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
      stdout.write("\t");
    }
    print("");
  }
}

void login() {
  print("********* login ************");
  print("enter name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if ("user" == u) {
      for (var udata in userdata[u]) {
        print("$name=>$udata ");
        if (name == udata) {
          print("user login");
          products();
        }
      }
    }
  }
}

void register() {
  print("enter key for login");
  String key = stdin.readLineSync()!;

  userdata[key] = username;
  print("enter user name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if (key == u) {
      for (var udata in userdata[u]) {
        if (name == udata) {
          print("user login");
          login();
        } else {
          username.add(name);
          userdata[key] = username;
          print(userdata);
          login();
        }
      }
    }
  }
}

void main() {
  while (true) {
    register();
  }
}
