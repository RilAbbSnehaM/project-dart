abstract class Info {
  Info() {
    print("info class");
  }
  void display();
  void display1() {
    print("display1 info class");
  }
}

class Superclass implements Info {
  String? name;

  Superclass(String name) : super() {
    this.name = name;
  }
  @override
  void display() {
    print(" display super class");
  }

  void display1() {
    print("display1 info class");
  }

  void show() {
    print("Super class=>>$name");
  }
}

class Subclass extends Superclass {
  Subclass(String name) : super(name) {}
  void show() {
    print("sub class");
    super.show();
  }
}

main() {
  /* 
  var sub = Subclass("hello");
  sub.show(); */

  /* var sup = new Superclass("hello"); */
  Info sup = new Superclass("hello");
  //Info sup = new Info();
  sup.display();
  sup.display1();
  // sup.show();
}
