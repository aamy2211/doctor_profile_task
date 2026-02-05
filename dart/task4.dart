//bool isPrime(int n) {
//  if (n < 2) return false;
  
//  for (int i = 2; i < n; i++) {
//    if (n % i == 0) return false;
  //}
  //
  //return true;
//}

//void main() {
  //print(isPrime(7));  
  //print(isPrime(10));
//}
//String getMiddle(String text) {
  //int length = text.length;
  //int middle = length ~/ 2;

  //if (length % 2 == 0) {
    //return text.substring(middle - 1, middle + 1);
  //} else {
    //return text[middle];
  //}
//}

//void main() {
  //print(getMiddle("Dart"));    
  //print(getMiddle("Flutter")); 
//}
//double calculateCircleArea(double radius) {
  //return 3.14159 * radius * radius;
//}

//void main() {
  //print(calculateCircleArea(5)); 
//}
//int countWords(String text) {
  //if (text.isEmpty) return 0;
  
//  List<String> words = text.trim().split(' ');
//  return words.length;
//}

//void main() {
  //print(countWords("I love Dart programming")); 
//}
//double calculator(double num1, double num2, String operator) {
 // switch (operator) {
 //   case '+':
  //    return num1 + num2;
 //   case '-':
 //    return num1 - num2;
  //  case '*':
  //    return num1 * num2;
  //  case '/':
  //    return num2 != 0 ? num1 / num2 : 0.0;
 //   default:
 //     print( 'Invalid operator');
 //     return 0.0;
 // }
//}

//void main() {
//  print(calculator(10, 5, '+')); 
//  print(calculator(10, 2, '/')); 
//}
//void countEvenOdd(List<int> numbers) {
 // int evenCount = 0;
 // int oddCount = 0;

 // for (int n in numbers) {
//    if (n % 2 == 0) {
 //     evenCount++;
 //   } else {
 //     oddCount++;
 //   }
 // }
//
//  print("Even: $evenCount, Odd: $oddCount");
//}

//void main() {
//  countEvenOdd([1, 2, 3, 4, 5, 6]); 
//}
//int countDigits(int number) {
//  return number.abs().toString().length;
///}

//void main() {
//  print(countDigits(12345)); 
//  print(countDigits(-987));  
//}
List reverseList(List list) {
  return list.reversed.toList();
}

void main() {
  print(reverseList([1, 2, 3, 4, 5])); 
  print(reverseList(["A", "B", "C"]));
}