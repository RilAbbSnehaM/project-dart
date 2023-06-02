import 'dart:io';

bool userData(String email, int password) {
  var user = {"admin@gmail": 1234, "user@gmail": 1111};

  return user.containsKey(email) && user[email] == password;
}

void line() {
  print("********************************");
}

product(String? pname, int qty) {
  var productname = {
    'pen': {'rate': 100, 'qty': 20},
    'pizza': {'rate': 150, 'qty': 30},
    'coffee': {'rate': 180, 'qty': 40}
  };

  line();
  print("sno.\tp_name\tp_rate\tp_qty");
  productname.forEach((key, value) {
    print(
        "${productname.keys.toList().indexOf(key) + 1}\t ${key}\t ${value['rate']}\t ${value['qty']}");
  });

  line();

  for (var i = 0; i < productname.length; i++) {
    if (productname.containsKey(pname)) {
      return true;
    }
  }

  if (qty > 0) {
    for (var product in productname.entries) {
      if (qty == product.value['qty'] && pname == product.key) {
        return true;
      }
    }
  }

  return false;
}

bool login() {
  stdout.write("Enter email: ");
  String email = stdin.readLineSync()!;
  stdout.write("Enter password: ");
  int password = int.parse(stdin.readLineSync()!);
  if (userData(email, password)) {
    return true;
  } else {
    return false;
  }
}

void removeFromcart(var pname) {
  Map<String, dynamic> productname = {
    'product1': 'pen',
    'product2': 'pizza',
    'product3': 'coffee'
  };
  productname.remove(pname);
}

void addCart() {
  print("Enter product name:");
  var pname = stdin.readLineSync();
  if (product(pname, 0)) {
    print("Enter quantity:");
    var pqty = int.parse(stdin.readLineSync()!);
    if (product(pname, pqty)) {
      print("Rate: ");
      var prate = int.parse(stdin.readLineSync()!);
      var prod = Product(pname, prate, pqty);
      print("Want to remove any product?");
      var ans = stdin.readLineSync();
      print("Your ans: $ans");
      if (ans == 'yes') {
        removeFromcart('');
        print("Enter product name to be removed: $pname");
        print("Product removed successfull.");
      } else {
        print("Okay! product is not removed.");
      }

      payment(prod);
    } else {
      print("Invalid quantity.");
    }
  } else {
    print("Invalid product name.");
  }
}

class Product {
  var name;
  int rate;
  int quantity;

  Product(this.name, this.rate, this.quantity);
}

void payment(Product prod) {
  Map<String, dynamic> paymentOptions = {
    '1': 'Paytm',
    '2': 'Net Banking',
    '3': 'Credit Card',
    '4': 'Cash On Delivery'
  };

  line();
  print("sno.\tpayment_opt");
  paymentOptions.forEach((key, value) {
    print("${paymentOptions.keys.toList().indexOf(key) + 1}\t${value}");
  });

  print("Enter mode of payment: ");
  var mode = stdin.readLineSync();
  if (mode == "Credit Card") {
    print("Enter cardHolderName: ");
    var cardHolderName = stdin.readLineSync();
    print("Enter cardNumber: ");
    var cardnum = stdin.readLineSync();
    print("Enter cvv: ");
    var cvv = stdin.readLineSync();
    print("Enter expirydate: ");
    var expirydate = stdin.readLineSync();

    print("$cardHolderName");
    print("$cardnum");
    print("$cvv");
    print("$expirydate");

    // Process credit card payment
  }

  // ...
  var amount = prod.rate * prod.quantity;
  int total = 0;
  total += amount;
  print("Total amount: $total");
  if (mode != 'Cash On Delivery') {
    print("Enter user amount:");
    var useramt = int.parse(stdin.readLineSync()!);
    if (useramt == amount) {
      print("Payment successful.Thank you!");
    } else {
      print("Plese pay exact amount!!");
    }
  } else {
    print("Order placed successfully!");
  }
}

void main() {
  while (true) {
    print("1. Login 2. Logout");
    var ch = int.parse(stdin.readLineSync()!);
    if (ch == 1) {
      if (login()) {
        print("Login successful");
        product("", 0);
        addCart();
      } else {
        print("Invalid credentials. Please try again.");
      }
    } else {
      break;
    }
  }
}
