class DelimetersCalculator {
  int gcd(int x, int y) {
    if (x < y) {
      x = x + y;
      y = x - y;
      x = x - y;
    }
    while (y > 0) {
      x %= y;
      x = x + y;
      y = x - y;
      x = x - y;
    }
    return x;
  }

  double? lcm(int? x, int? y) {
    try {
      if (x == null || y == null) {
        throw ArgumentError();
      }
    } catch (e) {
      print('Passed null argument');
    }
    return x! / gcd(x, y!) * y;
  }
}
