extension DigitParser on Iterable<String> {
  static const Map<String, int> _stringDigits = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };
  Set<int?>? parseDigits() {
    Set<int?> ret = {};
    forEach((element) {
      if (_stringDigits.containsKey(element.toLowerCase())) {
        _stringDigits[element.toLowerCase()];
        ret.add(_stringDigits[element.toLowerCase()]);
      }
    });
    return ret;
  }
}
