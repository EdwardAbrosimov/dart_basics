import 'package:test/test.dart';
import 'package:dart_basics/point.dart';
import 'dart:math';

void main() {
  group('Test some points', () {
    test(
        'Distance between Point(5, 6, 7) and Point(-5, -6, -7) close to 20.97617',
        () {
      Point a = Point(5, 6, 7);
      Point b = Point(-5, -6, -7);
      expect(a.distanceTo(b), closeTo(20.9761, 0.0001));
    });
    test('Triangle A(0, 0, 1), B(0, 1, 0) C(1, 0, 0)  close to 0.8660', () {
      Point a = Point(0, 0, 1);
      Point b = Point(0, 1, 0);
      Point c = Point(1, 0, 0);
      expect(Point.triangleSquare(a, b, c), closeTo(0.8660, 0.0001));
    });
    test('Distance point A(1,1,1) from origin equals sqrt(3)', () {
      expect(Point(1, 1, 1).distanceFromOrigin(), equals(sqrt(3)));
    });
    test('Point  A(1,1,1) and B(1,1,1) are equals', () {
      Point a = Point(1, 1, 1);
      Point b = Point(1, 1, 1);
      expect(a.equals(b), equals(true));
    });
    test('Point  A = Point.onLine(5) and B(5,5,5) are equals.', () {
      Point a = Point.onLine(5);
      Point b = Point(5, 5, 5);
      expect(a.equals(b), equals(true));
    });
    test('Point  A = Point.ones() and B = Point.ones() are identical.', () {
      Point a = Point.ones();
      Point b = Point.ones();
      expect(identical(a, b), equals(true));
    });
  });
}
