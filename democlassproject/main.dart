import 'user/product.dart';
import 'user/register.dart';

class db {
  void showuser() {
    print("username");
  }
}

void main() {
  var registration = new Reg();
  registration.register();
  var product = new Pro("", 0, 0);
  product.product("", 0);
}
