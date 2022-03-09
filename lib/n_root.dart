extension RootClass on num {
  num _exp(num val, num e) {
    num _t = 1;
    for (int i = 0; i < e; ++i) {
      _t *= val;
    }
    return _t;
  }

  num? nRoot(num degree) {
    try {
      if (degree == 0) {
        throw ArgumentError('Zero degree');
      }
      if (this == 0 && degree < 2) {
        throw ArgumentError('Too small degree for value 0');
      }
      if (this < 0 && degree % 2 == 0) {
        throw ArgumentError('Odds root from negative value didn\'t exist');
      }

      final double _eps = 0.00001;
      num _xk = this / degree;
      num _xk1 = this;
      while ((_xk1 - _xk).abs() >= _eps) {
        _xk = _xk1;
        _xk1 = (1 / degree) *
            ((degree - 1) * _xk + this / (_exp(_xk, degree - 1)));
      }
      return _xk1;
    } on ArgumentError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
