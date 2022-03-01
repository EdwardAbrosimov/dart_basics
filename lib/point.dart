import 'dart:math';

class Point {
  final double _x;
  final double _y;
  final double _z;
  static final Point _origin = Point(0, 0, 0);
  static final Point _ones = Point(1, 1, 1);

  Point(double x, double y, double z)
      : _x = x,
        _y = y,
        _z = z;

  double distanceTo(Point another) {
    return sqrt((pow(another._x - _x, 2) + pow(another._y - _y, 2)) +
        (pow(another._z - _z, 2)));
  }

  static double triangleSquare(Point a, Point b, Point c) {
    final A = b.distanceTo(c);
    final B = a.distanceTo(c);
    final C = a.distanceTo(b);
    final p = (A + B + C) / 2;
    return sqrt(p * (p - A) * (p - B) * (p - C));
  }

  double distanceFromOrigin() {
    return sqrt(_x * _x + _y * _y + _z * _z);
  }

  bool equals(Point another) {
    return _x == another._x && _y == another._y && _z == another._z;
  }

  factory Point.origin() {
    return _origin;
  }

  factory Point.ones() {
    return _ones;
  }

  Point.onLine(double value)
      : _x = value,
        _y = value,
        _z = value;
}
