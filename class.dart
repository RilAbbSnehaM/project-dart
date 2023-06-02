import 'dart:io';

class Product {
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
    "prod_id": [],
    "product_name": [],
    "qty": [],
    "rate": [],
    "dis": [],
    "cart": [
      {"productid": [], "cartqty": []}
    ]
  };

  Product() {
    productdata["prod_id"] = prod_id;
    productdata["product_name"] = product_name;
    productdata["qty"] = qty;
    productdata["rate"] = rate;
    productdata["dis"] = dis;
  }

  int productCheck(String product) {
    print(product);
    var pos = -1;

    var pro_name = productdata['product_name'];
    print(pro_name);
    for (var i = 0; i < prod_id.length; i++) {
      if (pro_name == product[i]) {
        pos = i;
        break;
      }
    }
    return pos;
  }

  void viewCart() {
    print("************cart***********");
    var productname = stdin.readLineSync()!;

    var pos = productCheck(productname);
    print(productdata);
    print(pos);
  }

  void removeFromCart() {
    print("************remove from cart***********");
    var productname = stdin.readLineSync()!;

    var pos = productCheck(productname);
    if (pos != -1) {
      productdata["cart"]?[0]["productid"].removeAt(pos);
      productdata["cart"]?[0]["cartqty"].removeAt(pos);
    }

    print(productdata);
    print("Product removed from the cart.");
    payment();
  }

  void payment() {
    print("************payment***********");
    var productname = stdin.readLineSync()!;

    var pos = productCheck(productname);
    if (pos != -1) {
      var productId = productdata["cart"]?[0]["productid"][pos];
      var cartQty = productdata["cart"]?[0]["cartqty"][pos];

      var totalPrice = productdata["rate"]![0][productId - 1] * cartQty;

      print("Total price: $totalPrice");
      print("Payment successful!");
    }
  }

  void viewProducts() {
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
          stdout.write(productdata[key]![i]);
          stdout.write("\t");
        }
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
            print(" user login");
            viewProducts();
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
            print(" user login ");
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
}

void main() {
  Product cart = new Product();
  while (true) {
    cart.register();
  }
}
