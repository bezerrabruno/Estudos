import 'dart:math';

class BR {
  final double x1;
  final double x2;

  BR(this.x1, this.x2);
}

void bhaskara(int a, int b, int c) {
  var x1 = ((b - 2 * b) + sqrt((b * b) - (4 * a * c))) / (2 * a);
  var x2 = ((b - 2 * b) - sqrt((b * b) - (4 * a * c))) / (2 * a);

  print(x1);
  print(x2);
}
