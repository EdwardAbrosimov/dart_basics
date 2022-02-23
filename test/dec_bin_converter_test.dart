import 'package:test/test.dart';
import 'package:dart_basics/dec_bin_notation_converter.dart';

void main() {
  group('Convert bin to dec', () {
    test('Convert \'0010\' to 2', () {
      expect('0010'.toDec(), 2);
    });
    test('Convert \'sd0we01wer0rr\' to 2', () {
      expect('sd0we01wer0rr'.toDec(), 2);
    });
    test('Convert \'1001 0111 0010 0100\' to 38692', () {
      expect('1001 0111 0010 0100'.toDec(), 38692);
    });
  });

  group('Convert dec to bin', () {
    test('Convert 10 to \'1010\'', () {
      expect(10.toBin(), '1010');
    });
    test('Convert 713 to \'1011001001\'', () {
      expect(713.toBin(), '1011001001');
    });
    test('Convert 0 to \'0\'', () {
      expect(0.toBin(), '0');
    });
    test('Convert 1 to \'1\'', () {
      expect(1.toBin(), '1');
    });
  });
}
