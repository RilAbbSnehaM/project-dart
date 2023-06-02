import 'dart:io';

import 'pay.dart';
//import 'pay.dart';

class Pro extends Payment5 {
  String name;
  double rate;
  int quantity;

  Pro(this.name, this.rate, this.quantity);

  product(String? pname, int qty) {
    var products = {
      'hat': {'rate': 100.0, 'quantity': 20},
      'maggi': {'rate': 150.0, 'quantity': 10},
      'toffees': {'rate': 80.0, 'quantity': 30}
    };

    print("sno.\tp_name\ttp_rate\ttp_qty");

    products.forEach((key, value) {
      print(
          "${products.keys.toList().indexOf(key) + 1}\t${key}\t${value['rate']}\t${value['quantity']}");
    });

    if (products.containsKey(pname)) {
      return true;
    }

    if (qty > 0) {
      for (var product in products.entries) {
        if (qty == product.value['quantity'] && pname == product.key) {
          return true;
        } else {
          return false;
        }
      }
    }
    addCart();
  }

  void addCart() {
    print("Enter product name:");
    var pname = stdin.readLineSync();
    if (product(pname, 0)) {
      print("Enter quantity:");
      var pqty = int.parse(stdin.readLineSync()!);
      if (product(pname, pqty)) {
        print("Enter rate:");
        var prate = double.parse(stdin.readLineSync()!);
        print(prate);
        var prod = Pro(pname!, prate, pqty);
        print(prod);

        print('addtoCart Items before removal: $productName');
        removeFromaddtoCart('$pname');
        print('addtoCart Items after removal: $productName');

        payment(prod);
      } else {
        print("Invalid quantity");
      }
    } else {
      print("Invalid product name");
    }
  }

  Map<String, bool> productName = {'hat': true, 'maggi': true, 'toffees': true};

  void removeFromaddtoCart(String pname) {
    print("Enter the product name you want to remove:");
    var userobj = stdin.readLineSync()!;

    if (userobj == pname) {
      productName.remove(pname);
      print("Product is remove from addtocart:$productName");
    } else {
      print("product not remove");
    }
  }

  // double total = 0.0;

  // void payment(Pro prod) {
  //   var amount = prod.rate * prod.quantity;
  //   total += amount;
  //   print("totalamt: $amount");
  //   print("Enter useramt:");
  //   var useramt = double.parse(stdin.readLineSync()!);

  //   if (amount == useramt) {
  //     print("Payment Successful");
  //     print("Thank you! Visit Again");
  //   } else {
  //     print("Please Enter Exact Amount!");
  //   }
  // }
}
