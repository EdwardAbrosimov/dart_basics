import 'dart:math';

extension ParseDecimal on String {
  num toDec() {
    String filtred = '';
    split('').reversed.forEach((element) {
      if (element == '0' || element == '1') filtred += element;
    });
    num value = 0;
    for (int i = 0; i < filtred.length; ++i) {
      if (filtred[i] == '1') {
        value += pow(2, i);
      }
    }
    return value;
  }
}

extension ParseBinary on int {
  String toBin() {
    String outputString = '';
    num value = this;
    if (value == 0) return '0';
    while (value > 0) {
      outputString += ((value % 2) == 0) ? '0' : '1';
      value ~/= 2;
    }
    return outputString.split('').reversed.join();
  }
}
