class DateTimeSecureBox {
  final DateTime _data;
  final String _pin;

  DateTimeSecureBox(this._data, this._pin);

  DateTime? getDate(String pin) => (pin == _pin) ? _data : null;
}