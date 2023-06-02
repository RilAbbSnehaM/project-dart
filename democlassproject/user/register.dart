import 'dart:io';

class Reg {
  List<String> username = ["user1", "user2"];
  var userdata = {};

  void register() {
    print("Enter key for login:");
    String key = stdin.readLineSync()!;

    userdata[key] = username;
    print("Enter username:");
    String name = stdin.readLineSync()!;

    for (var u in userdata.keys) {
      if (key == u) {
        for (var udata in userdata[u]) {
          if (name == udata) {
            print("User already exists. Logging in...");
            login();
            return;
          }
        }
        username.add(name);
        userdata[key] = username;
        print(userdata);
        print("User registered successfully!");
        login();
        return;
      }
    }
  }

  void login() {
    print("********* Login ************");
    print("Enter username:");
    String name = stdin.readLineSync()!;

    for (var u in userdata.keys) {
      if (u == "username") {
        for (var udata in userdata[u]) {
          if (name == udata) {
            print("User login successful");
            break;
          }
        }
      }
    }
  }
}
