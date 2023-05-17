main() {
  int numbers = 123456789;
  List<int> num = numbers.toString().split('').map(int.parse).toList();
  print(num);
  List<int> evennumber = [];
  List<int> oddnumber = [];
  List<int> Finall = [];
  for (int dig in num) {
    if (dig % 2 == 0) {
      evennumber.add(dig);
    } else {
      oddnumber.add(dig);
    }
  }
  print(evennumber);
  print(oddnumber);
  Finall = evennumber + oddnumber;
  print(Finall);
}
