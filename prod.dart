import "dart:io";

bool userData(var email, var password) {
  var user = ["admin@gmail", "user@gmail"];
  var pass = [1234, 1111];
  //print(user);
  //dartprint(pass);
  for (var i = 0; i < user.length; i++) {
    if (email == user[i] && password == pass[i]) {
      return true;
    }
  }
  return false;
}

line() {
  print("********************************");
}

addcart() {
  print("Enter product name");
  var pname = stdin.readLineSync();
  if (product(pname, 0)) {
    print("enter qty");
    var pqty = int.parse(stdin.readLineSync()!);
    if (product(pname, pqty)) {
      print("rate");
    } else {
      print("qty not");
    }
  } else {
    print("not valid");
  }
}

product(var pname, var qty) {
  var productname = ['hat', 'maggi', 'toffes'];
  var rate = ['100', '150', '80'];
  var productqty = ['20', '10', '30'];

  line();

  for (var i = 0, j = 1; i < productname.length; i++, j++) {
    print("${j}\t${productname[i]}\t ${rate[i]}\t ${productqty[i]}");
  }
  line();

  for (var i = 0; i < productname.length; i++) {
    if (productname[i] == pname) {
      return true;
    }
  }

  if (qty > 0) {
    for (var i = 0; i < productname.length; i++) {
      if (qty[i] == qty && productname[i] == pname) {
        return true;
      }
    }
  }

  return false;
}

List<String> productName = ['hat', 'maggi', 'toffes'];

void removeFromaddtoCart(String pname) {
  productName.remove(pname);
}

double total = 0.0;

void payment(product prod) {
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
  stdout.write("enter email");
  var email = stdin.readLineSync();
  stdout.write("enter password");
  var password = stdin.readLineSync();
  if (userData(email, password)) {
    return true;
  } else {
    return false;
  }
}

main() {
  while (true) {
    print("1 login 2 logout");
    var ch = int.parse(stdin.readLineSync()!);
    if (ch == 1) {
      if (login()) {
        print("login");
        product("", 0);
        addcart();
      } else {
        print("not login");
      }
    } else {
      break;
    }
  }
}
