class SecureBox <T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);

  T? getDate(String pin) => (pin == _pin) ? _data : null;
}