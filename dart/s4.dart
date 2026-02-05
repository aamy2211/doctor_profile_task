void main() {
  int base = 3;
  int exponent = 4;
  int result = 1;

  for (int i = 1; i <= exponent; i++) {
    result = result * base;
  }
  print('Result: $result');
}

void printIterations() {
  int i = 1;
  while (i <= 5) {
    print('Iteration: $i');
    i++;
  }
}

void printDoWhile() {
  int j =1;
  do {
    print('Do-While Iteration: $j');
    j++;
  } while (j <= 5);
  
}
 