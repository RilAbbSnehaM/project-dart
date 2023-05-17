void main() {
  int n1 = 9;
  n1 += 2;
  print(n1);
  int n2 = 7;

  String g1 = "myth";
  String g2 = "Nest";
  bool g = g1 == "Nest" && g2 == "Myth";
  print(g);

  int r = n1 + n2;
  print(r);
  print("result=${r}");
  int r1 = n1 - n2;
  print(r1);
  int r3 = n1 * n2;
  print(r3);
  double r4 = n1 / n2;
  print(r4);
  int r5 = n1 % n2;
  print(r5);
  bool r7 = n1 >= n2;
  print(r7);
  bool r8 = n1 > 10 && n2 > 9;
  print(r8);
  bool r9 = n1 > 5 || n2 > 6;
  print(r9);
  print(!r9);
  print("n1 | n2 =${n1 | n2}");
  n1 == 10 ? print("Answer is 10") : print("Oh no!");
  if (n2 % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
  int pin = 1111;
  if (pin == 1111) {
    print("login");
  } else if (pin == 1234) {
    print("login");
  } else {
    print("not login");
  }
}
