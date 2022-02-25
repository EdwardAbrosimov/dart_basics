import 'package:test/test.dart';
import 'package:dart_basics/occurrences_map.dart';

void main() {
  group('Calculate words occurrences in list', () {
    test(
        'Calculate in list {cat, cat, dog, parrot, mice,mice} expects {cat: 2, dog: 1, parrot: 1, mice: 2}',
        () {
      expect(
          ['cat', 'cat', 'dog', 'parrot', 'mice', 'mice'].getOccurrencesMap(),
          equals(<String, int>{'cat': 2, 'dog': 1, 'parrot': 1, 'mice': 2}));
    });
    test('Calculate in list {0, 1, 1, 0, 1, 1, 0} expects {0: 4, 1: 4}', () {
      expect(['0', '1', '1', '0', '0', '1', '1', '0'].getOccurrencesMap(),
          equals(<String, int>{'0': 4, '1': 4}));
    });
  });
}
