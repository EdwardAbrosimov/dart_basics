import 'package:test/test.dart';
import 'package:dart_basics/digit_parser.dart';

void main() {
  group('Pars digits from itterable to set', () {
    test(
        'Parse digits from list [one, zero, one, two, cow, five, bee, five]. Exepts {1, 0, 2, 5}',
        () {
      expect(
          ['one', 'zero', 'one', 'two', 'cow', 'five', 'bee', 'five']
              .parseDigits(),
          equals({1, 0, 2, 5}));
    });
    test(
        'Parse digits from keys sentetive list [oNe, zErO, coW]. Exepts {1, 0}',
        () {
      expect(['oNe', 'zErO', 'coW'].parseDigits(), equals({1, 0}));
    });

    test(
        'Parse digits from keys sentetive set {three, fOUR, FEAR, their, two}. Exepts {3, 4, 2}',
        () {
      expect({'three', 'fOUR', 'FEAR', 'their', 'two'}.parseDigits(),
          equals({3, 4, 2}));
    });

    test('Parse digits from empty set {}. Exepts {}', () {
      expect(<String>{}.parseDigits(), equals(<int>{}));
    });
  });
}
