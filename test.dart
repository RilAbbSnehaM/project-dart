import "dart:io";

class Product {
  late String name;
  late double rate;
  late int quantity;

  Product(this.name, this.rate, this.quantity);
}

bool userData(String email, var password) {
  var users = {"admin@gmail.com": "1234", "user@gmail.com": "1111"};

  return users.containsKey(email) && users[email] == password;
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
    print("quantity");
    if (product(pname, pqty)) {
      print("Enter rate:");
      var prate = double.parse(stdin.readLineSync()!);
      var prod = Product(pname!, prate, pqty);

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
  var userobj = stdin.readLineSync();
  userobj == pname;

  productName.remove(pname);
}

bool product(String? pname, int qty) {
  var products = {
    'hat': {'rate': 100.0, 'quantity': ""},
    'maggi': {'rate': 150.0, 'quantity': ""},
    'toffees': {'rate': 80.0, 'quantity': ""}
  };

  line();
  print("sno.\tp_name\ttp_rate\ttp_pqty);
  
  
  

  products.forEach((key, value) {
    print(
        "${products.keys.toList().indexOf(key) + 1}\t${key}\t${value['rate']}\t${value['']);
  };
  line();

  if (products.containsKey(pname)) {
    return true;
  }

  if (qty > 0) {
    for (var product in products.entries) {
      if (qty == product.value['quantity'] && pname == product.key) {
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
    print("Thank you! Visit Again");
  } else {
    print("Please Enter Exact Amount!");
  }
}

register() {
  print("enter user name");
  String name = stdin.readLineSync()!;
  username.add(name);
  print("enter key for login");
  String key = stdin.readLineSync()!;
  userdata[key] = username;
}

var username = ["user1", "user2"];
var userdata = {};

login() {
  print("enter name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if ("user" == u) {
      for (var udata in userdata[u]) {
        if (name == udata) {
          print("login");
        }
        break;
      }
    }
  }
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
  register();

  while (true) {
    print("1. Login 2. Logout");
    var ch = int.parse(stdin.readLineSync()!);
    if (ch == 1) {
      if (login()) {
        print("Login successful");
        product("", 0);

        addCart();
      }
    } else {
      print("Login failed");
    }
  }
}
