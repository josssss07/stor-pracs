// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  List<num> listx = [];
  List<num> listy = [];

  print("Number of numbers");
  String? name = stdin.readLineSync().toString();
  int n = int.parse(name);

  for (int i = 0; i < n; i++) {
    print("Enter x$i: ");
    String? ex = stdin.readLineSync().toString();
    listx.add(int.parse(ex));
    print("Enter y$i: ");
    String? why = stdin.readLineSync().toString();
    listy.add(int.parse(why));
  }

  print("Enter x to find y(x): ");
  num x = int.parse(stdin.readLineSync().toString());
  num answer = 0;
  num numerator = 1;
  num denominator = 1;

  for (int i = 0; i < listx.length; i++) {
    numerator = 1;
    denominator = 1;
    for (int j = 0; j < listx.length; j++) {
      if (i == j) {
        continue;
      }
      print('${x} - ${listx[j]}/${listx[j]} - ${listx[i]}');
      numerator *= (x - listx[j]);
      denominator *= (listx[i] - listx[j]);
    }
    // print('${numerator}, ${denominator}');
    answer += ((numerator / denominator)) * listy[i];
  }

  print(answer);
}
