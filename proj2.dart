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
  "cart": [
    {"productid": [], "cartqty": []}
  ]
};

productcheck(product) {
  print(product);

  var pos;

  var pro_name = productdata['product_name'];
  print(pro_name);
  for (var i = 0; i < prod_id.length; i++) {
    if (pro_name != product_name[i]) {
      print(pos = -1);

      break;
    }
  }
  return pos;
}

cart() {
  print("************cart***********");
  var productname = stdin.readLineSync();
  var pos = productcheck(productname);
  productdata["cart"] = [
    {"productid": [], "cartqty": []}
  ];

  print(productdata);
  print(pos);
}

Product() {
  print("****** product******");
  var n = productdata['prod_id'];
  print(n);

  for (var i = 0; i < prod_id.length; i++) {
    if (i == 0) {
      for (var key in productdata.keys) {
        if (key != "cart") {
          stdout.write(key);
          stdout.write("\t");
        }
      }
      print("");
    }

    for (var key in productdata.keys) {
      if (key != "cart") {
        stdout.write(productdata[key]?[i]);
        stdout.write("\t");
      }
    }

    print("");
  }
}

Login() {
  print("********* login ************");
  print("enter name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if ("user" == u) {
      for (var udata in userdata[u]) {
        print("$name=>$udata ");
        if (name == udata) {
          print(" user login");
          Product();
        }
      }
    }
  }
}

void Register() {
  print("enter key for login");
  String key = stdin.readLineSync()!;

  userdata[key] = username;
  print("enter user name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if (key == u) {
      for (var udata in userdata[u]) {
        if (name == udata) {
          print(" user login ");
          Login();
          // break;
        } else {
          username.add(name);

          userdata[key] = username;
          print(userdata);
          Login();
        }
      }
    }
  }
}

void main() {
  while (true) {
    Register();
  }
}
