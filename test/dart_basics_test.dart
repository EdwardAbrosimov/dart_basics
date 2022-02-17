import 'package:test/test.dart';
import 'package:dart_basics/delimeters_calculator.dart';

void main() {
  group('Calculate GCD', () {
    test('gcd(5, 10) return 5', () {
      expect(DelimetersCalculator().gcd(5, 10), 5);
    });
    test('gcd(16, 448) return 16', () {
      expect(DelimetersCalculator().gcd(16, 448), 16);
    });
    test('gcd(17, 13) return 1', () {
      expect(DelimetersCalculator().gcd(17, 13), 1);
    });
  });

  group('Calculate LCM', () {
    test('lcm(13,17) return 221', () {
      expect(DelimetersCalculator().lcm(13, 17), 221);
    });
    test('lcm(10946,17711) return 193864606', () {
      expect(DelimetersCalculator().lcm(10946, 17711), 193864606);
    });
    test('lcm(0,0) return NaN', () {
      expect(DelimetersCalculator().lcm(0, 0), isNaN);
    });
  });
}
