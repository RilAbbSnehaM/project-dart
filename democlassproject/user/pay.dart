import 'dart:io';
//import 'product.dart';

class Payment5 {
  // Payment5() : super();

  // void addCart() {
  //   super.addCart();
  // }

  double total = 0.0;
  payment(prod) {
    var amount = prod.rate * prod.quantity;
    total += amount;
    print("totalamt: $amount");
    print("Enter useramt:");
    var useramt = double.parse(stdin.readLineSync()!);

    if (amount == useramt) {
      print("Payment Successful");
      print("Thank you! Visit Again");
    } else if (amount != useramt) {
      print("Please Enter Exact Amount!");
    }
  }
}
