### Generic Type

adalah keyword untuk mengantikan tipe data supaya tipe data menjadi global secara umum dilambangkan

`T` diambil dari kata `Type` seperti ini

```dart
class SecureBox <T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);

  T? getDate(String pin) => (pin == _pin) ? _data : null;
}
```

kemudian penerapan nya di `main` kaya gini

```dart
import 'package:generic/secure_box.dart';

void main(List<String> arguments) {
  var box = SecureBox<String>('test data', '123');

  // get data
  print(box.getDate('123').toString());
}
```

kemudian kalo kita jalankan seperti ini

```
test data
```

contoh lagi misal datanya jadi `int` kita tinggal otak atik main


```dart
import 'package:generic/secure_box.dart';

void main(List<int> arguments) {
  var box = SecureBox<String>(124, '123');

  // get data
  print(box.getDate('123').toString());
}
```

hasilnya

```
124
```

---

[Final dan Const](../final_const/README.md)  <> [Enum dan Cascade Notation](../enums/README.md)