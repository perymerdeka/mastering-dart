void main(List<String> arguments) {}

class PersegiPanjang {
  late double _panjang;
  late double _lebar;

  // setter lebar
  void set lebar(double value) {
    _lebar = value;
  }

  // getter lebar

  double get lebar {
    return _lebar;
  }

  // setter panjang
  void setPanjang(double value) {
    if (value < 0) {
      value *= 1;
    }
    _panjang = value;
  }

  // getter panjang
  double getPanjang() => _panjang;

  double hitungLuas() {
    return this._panjang * this._lebar;
  }

  // bikin property
  double get luas => this._panjang * this._lebar;
}
