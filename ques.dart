void main() {
  int number = 2345678;
  int even_dig = 0;
  String numberString = number.toString();
  int count = numberString.length;
  print("count=$count");

  int sum = 0;
  for (int i = 0; i < numberString.length; i++) {
    int digit = int.parse(numberString[i]);
    if (digit % 2 == 0) {
      even_dig = even_dig * 10 + digit;
      print(digit);
      sum += digit;
    }
  }
  print('The sum of even digits is $sum');
  while (even_dig != 0) {
    int digit = even_dig % 10;
    print(digit);
    even_dig ~/= 10;
  }
}
