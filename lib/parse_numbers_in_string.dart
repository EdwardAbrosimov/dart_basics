extension FindNumbers on String {
  Set<int> findNumbers() {
    Set<int> num = {};
    split(' ').forEach((element) {
      String filtred = '';
      element.split('').forEach((element2) {
        if (int.tryParse(element2) != null || element2 == '-') {
          filtred += element2;
        }
      });
      if (filtred.contains(RegExp(r'0[0-9]'))) {
        num.add(0);
      }
      num.add(int.parse(filtred));
    });
    return num;
  }
}
