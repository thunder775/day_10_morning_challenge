// Challenge 1
// Write a function that returns the longest sequence of consecutive zeroes in a binary string.
// Examples:
// longestZero("01100001011000") ➞ "0000"
//
// longestZero("100100100") ➞ "00"
//
// longestZero("11111") ➞ ""
import 'dart:math';

String longestZero(String str) {
  List<int> zero = [];
  int counter = 0;
  String result;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == '0') {
      counter += 1;
      zero.add(counter);
    } else if (str[i] == '1') {
      counter = 0;
    }
  }
  int n = zero.reduce(max);
  result = '0'*n;
  return result;
}

// Challenge 2
// Create a function that performs an even-odd transform to an array, n times. Each even-odd transformation:
//
// 1. Adds two (+2) to each odd integer.
// 2. Subtracts two (-2) to each even integer.
// Examples:
// evenOddTransform([3, 4, 9], 3) ➞ [9, -2, 15]
// Since [3, 4, 9] => [5, 2, 11] => [7, 0, 13] => [9, -2, 15]
//
// evenOddTransform([0, 0, 0], 10) ➞ [-20, -20, -20]
//
// evenOddTransform([1, 2, 3], 1) ➞ [3, 0, 5]
List evenOddTransform(List<int> x, int n) {
  int y = (2 * n);
  List<int> result = [];
  for (int z in x) {
    if (z % 2 == 0) {
      z = z - y;
      result.add(z);
    } else {
      z += y;
      result.add(z);
    }
  }
  return result;
}

main() {
  print(evenOddTransform([2, 3, 1], 2));
  print(longestZero('1100011000000'));
}

// Challenge 3
// Write 2 test cases to test both the previous functions in test.dart
