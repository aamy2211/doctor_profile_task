//import 'dart:io';
import 'dart:math';

//void main() {
// print('Hello, World!');
// String jop = 'Flutter Developer';
// print('Hello, I am a $jop');
//stdout.writeln('Enter your name:');
// String? name = stdin.readLineSync();
// stdout.writeln('Hello, $name!');
//List<int> numbers = [234, 35, 35, 35, 53];

// int sum = 0;
//numbers.forEach((e) {
//  sum += e;
//  print(e);
// });
// numbers.add(6);
//numbers.removeAt(3);
// numbers[numbers.indexOf(3)] = 33;
//numbers.forEach((e) {
// numbers[numbers.indexOf(e)] = e - 1;
// });
// print(numbers);

// print(numbers);
//print(numbers.length);
// Set<int> uniqueNumbers = {1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 8};

//});

//Map<String, String> countreyCodes = {
//   'USA': '+1',
//   'India': '+91',
//   'UK': '+44',
//  'Germany': '+49',
// };
// countreyCodes['France'] = '+33';
//print(countreyCodes);
// int x = 9;
// int y = 2;
// print(x ~/ y);
//print(x % y);
// print(x + y);
// int x = 91;
//  int y = 91;
//int z = 10;
// if (x >= y && x >= z) {
//   print('x is the largest');
//  } else if (y >= x && y >= z) {
//   print('y is the largest');
// } else {
//   print('z is the largest');
// }

//import 'dart:math';

void main() {
  print("--- Task 1: Check Number ---");
  checkNumber(-5);
  print("----------------------------");

  print("--- Task 2: Sum & Average ---");
  calculateList([234, 35, 35, 35, 53]);
  print("----------------------------");

  print("--- Task 3: Simple Calculator ---");
  simpleCalculator(10, 5, '+');
  print("----------------------------");

  print("--- Task 4: Largest & Smallest ---");
  findMinMax(10, 25, 15);
  print("----------------------------");

  print("--- Task 5: Circle Properties ---");
  circleProperties(7);
  print("----------------------------");

  print("--- Task 6: Leap Year ---");
  isLeapYear(2024);
  print("----------------------------");

  print("--- Task 7: BMI Calculator ---");
  calculateBMI(80, 1.75);
  print("----------------------------");
}

void checkNumber(double num) {
  if (num > 0) {
    print("The number is: Positive");
  } else if (num < 0) {
    print("The number is: Negative");
  } else {
    print("The number is: Zero");
  }
}

void calculateList(List<int> numbers) {
  int sum = 0;
  numbers.forEach((e) {
    sum += e;
  });
  double avg = sum / numbers.length;

  print("Total Sum: $sum");
  print("Average: $avg");
}

void simpleCalculator(double n1, double n2, String op) {
  print("First Number: $n1");
  print("Second Number: $n2");
  print("Operation: $op");

  if (op == '+') {
    print("Result: ${n1 + n2}");
  } else if (op == '-') {
    print("Result: ${n1 - n2}");
  } else if (op == '*') {
    print("Result: ${n1 * n2}");
  } else if (op == '/') {
    print("Result: ${n1 / n2}");
  }
}

void findMinMax(int a, int b, int c) {
  print("Numbers: $a, $b, $c");
  int max = a;
  if (b > max) max = b;
  if (c > max) max = c;

  int min = a;
  if (b < min) min = b;
  if (c < min) min = c;

  print("Largest Value: $max");
  print("Smallest Value: $min");
}

void circleProperties(double r) {
  print("Radius: $r");
  double area = pi * pow(r, 2);
  double perimeter = 2 * pi * r;

  print("Area: ${area.toStringAsFixed(2)}");
  print("Perimeter: ${perimeter.toStringAsFixed(2)}");
}

void isLeapYear(int year) {
  bool leap = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  if (leap) {
    print("Year $year is a Leap Year");
  } else {
    print("Year $year is NOT a Leap Year");
  }
}

void calculateBMI(double w, double h) {
  double bmi = w / (h * h);
  print("Weight: $w kg");
  print("Height: $h m");
  print("BMI Score: ${bmi.toStringAsFixed(1)}");

  if (bmi < 18.5) {
    print("Classification: Underweight");
  } else if (bmi < 25) {
    print("Classification: Normal");
  } else if (bmi < 30) {
    print("Classification: Overweight");
  } else {
    print("Classification: Obese");
  }
}
