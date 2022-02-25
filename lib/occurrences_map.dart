extension OccurrenceMap on List<String> {
  Map<String, int>? getOccurrencesMap() {
    var ret = <String, int>{};
    forEach((element) {
      if (!ret.containsKey(element)) {
        ret[element] = 1;
      } else {
        ret[element] = ret[element]! + 1;
      }
    });
    return ret;
  }
}
