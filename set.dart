import 'dart:io';

void main() {
  //var data = [1, 2, 3, 4];

  var data1 = {1, 2, 3, 4};
  var datamap = {"id": 100, "name": "user", "age": 20};
  print(datamap);
  print(datamap.keys);
  print(datamap.values);
  print(datamap["id"]);
  datamap["salary"] = 2000;
  print(datamap);

  datamap["info"] = {"info1": "njxns", "info2": "jndjb"};
  print(datamap);

  for (int i = 0; i < data1.length; i++) {
    print(data1);
  }

  for (var i in data1) {
    print(i);
  }
  data1.forEach((element) {
    print(element);
  });
  var dd = data1.map((e) => e * 4);
  print(dd);
  data1.add(31);
  print(dd);
  print(data1);
  data1.add(1);
  print(data1);
  //var user = {"user": "user1"};
  print("enter name");
  var name = stdin.readLineSync();
  /*if (name == user['user']) {
   // print("login");
  }*/
  var username = ["user1", "user2"];
  var userdata = {};
  userdata["user"] = username;
  for (var u in userdata.keys) {
    if ("user" == u) {
      for (var udata in userdata[u]) {
        if (name == udata) {
          print("login");
          break;
        }
      }
    }
  }
  register();
  print(username);
  print("enter key");
  userdata['user'];
  LOGIN();
}

var username = ["user1", "user2"];
var userdata = {};
LOGIN() {
  var user = {"user": "user1"};
  print("enter name");
  var name = stdin.readLineSync();
  if (name == user['user']) {
    print("login");
  }
}

void register() {
  print("enter name");
  String name = stdin.readLineSync()!;
  username.add(name);
}
