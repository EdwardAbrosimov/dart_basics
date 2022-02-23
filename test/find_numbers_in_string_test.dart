import 'package:test/test.dart';
import 'package:dart_basics/parse_numbers_in_string.dart';

void main() {
  group('Parse numbers in string', () {
    test('Parse\'He11o w0r1d\' to get set{11,0,1}', () {
      expect('He11o w0r1d'.findNumbers(), equals({0, 11, 1}));
    });
    test(
        'Parse\'0 01 10 9 99 -1 -0 -20\' to get set {0, 1, 10, 9, 99, -1, -20}',
        () {
      expect('0 01 10 9 99 -1 -0 -20'.findNumbers(),
          equals({0, 1, 10, 9, 99, -1, -20}));
    });
    test('Parse\'-HoH0ho, merr7 cr-15-tma5!\' to get set{0,7,-155}', () {
      expect('-HoH0ho, merr7 cr-15tma5!'.findNumbers(), equals({0, 7, -155}));
    });
  });
}
