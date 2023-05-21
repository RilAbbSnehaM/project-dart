import "dart:io";

class Product {
  var name;
  double rate;
  int quantity;

  Product(this.name, this.rate, this.quantity);
}

bool userData(String email, String password) {
  var users = ["admin@gmail.com", "user@gmail.com"];
  var passwords = ["1234", "1111"];

  for (var i = 0; i < users.length; i++) {
    if (email == users[i] && password == passwords[i]) {
      return true;
    }
  }

  return false;
}

void line() {
  print("********************************");
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
      var prod = Product(pname, prate, pqty);
      payment(prod);
    } else {
      print("Invalid quantity");
    }
  } else {
    print("Invalid product name");
  }
}

void removeFromaddCart(String pname) {
  addCart.remove(pname);
}

bool product(var pname, int qty) {
  var productNames = ['hat', 'maggi', 'toffees'];
  var productRates = [100.0, 150.0, 80.0];
  var productQuantities = [20, 10, 30];

  line();
  print("sno.\tp_name\ttp_rate\ttp_qty");

  for (var i = 0, j = 1; i < productNames.length; i++, j++) {
    print(
        "${j}\t${productNames[i]}\t${productRates[i]}\t${productQuantities[i]}");
  }
  line();

  for (var i = 0; i < productNames.length; i++) {
    if (productNames[i] == pname) {
      return true;
    }
  }

  if (qty > 0) {
    for (var i = 0; i < productNames.length; i++) {
      if (qty == productQuantities[i] && pname == productNames[i]) {
        return true;
      }
    }
  }

  return false;
}

double total = 0.0;

void payment(Product prod) {
  var amount = prod.rate * prod.quantity;
  total += amount;
  print("totalamt: $amount");
  print("Enter useramt:");
  var useramt = double.parse(stdin.readLineSync()!);

  if (amount == useramt) {
    print("Payment Successful");
    print("Thanku!Visit Again");
  } else {
    print("Please Enter Exact Amount!");
  }
}

bool login() {
  stdout.write("Enter email: ");
  var email = stdin.readLineSync();
  stdout.write("Enter password: ");
  var password = stdin.readLineSync();
  if (userData(email!, password!)) {
    return true;
  } else {
    return false;
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
        print("Login failed");
      }
      removeFromaddCart("Item 2");

      print("Updated Cart Items: $addCart");
    } else {
      break;
    }
  }
}
