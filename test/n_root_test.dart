import 'package:test/test.dart';
import 'package:dart_basics/n_root.dart';

void main() {
  group('Simple test for n root', () {
    final double _eps = 0.01;
    test('8.nRoot(3) = 2', () {
      expect(8.nRoot(3), closeTo(2, _eps));
    });
    test('125.nRoot(3) = 5', () {
      expect(125.nRoot(3), closeTo(5, _eps));
    });
    test('-125.nRoot(3) = -5', () {
      expect(-125.nRoot(3)!, closeTo(-5, _eps));
    });
    test('0.nRoot(2) = 0', () {
      expect(0.nRoot(2)!, equals(0));
    });
  });

  group('Exeption test for n root', () {
    test('8.nRoot(0) fails with message "Zero degree"', () {
      expect(
          () => 8.nRoot(0),
          throwsA(predicate(
              (e) => e is ArgumentError && e.message == 'Zero degree')));
    });
    test('0.nRoot(1) fails with message "Too small degree for value 0"', () {
      expect(
          () => 0.nRoot(1),
          throwsA(predicate((e) =>
              e is ArgumentError &&
              e.message == 'Too small degree for value 0')));
    });
  });
}
