void main() {
  int? x;
  int? y;
  if (x == y) {
    print('Both $x and $y are NULL');
  }
  int? m = 10;
  int? n = 20;
  if (m == n || m != n) {
    // False OR True => **TRUE** will prevail
    print('Both $m and $n have unequal value');
  } else {
    print('Both $m and $n have equal value');
  }
  // Output: Both 10 and 20 have unequal value
  int? a = 5;
  int? b = 5;
  if (a == b || a != b) {
    // True OR False => **TRUE** will prevail
    print('Both $a and $b have equal value');
  } else {
    print('Both $a and $b have unequal value');
  }
  // output: Both 5 and 5 have equal value
  if ((a == b || a != b) && a != b) {
    // True AND False => **FALSE** will prevail
    print('If part will work.');
  } else {
    print('Else part will work.');
  }
  // output: Else part will work.
  /// Conditional Expression
  (a == b) ? print('If part will work.') : print('Else part will work.');
  // output: If part will work.
  (a != b) ? print('If part will work.') : print('Else part will work.');
  // output: Else part will work.
}

/**
 * Both null and null are NULL
Both 10 and 20 have unequal value
Both 5 and 5 have equal value
Else part will work.
If part will work.
Else part will work.

 */