### Enkapsulasi

---

enkapsulasi itu adalah teknik pembungkusan jadi data-data yang dibuat dalam suatu `class` itu dibuat private

dalam bahasa `dart` kita bisa pake `property`

contoh kita punya `class` untuk menghitung luas persegi dimana salah satu variable nya private

#### Contoh menggunakan Getter & setter

```dart
// lib/encapsulasi.dart

void main(List<String> arguments) {}

class PersegiPanjang {
  late double _panjang;
  late double lebar;

  // setter
  void setPanjang(double value) {
    if (value < 0) {
      value *= 1;
    }
    _panjang = value;
  }
  double getPanjang() => _panjang;
  double hitungLuas() {
    return  this._panjang * this.lebar;
  }
}
```

lalu kita coba
akses dari file yang berbeda

```dart
import 'dart:io';

import 'package:enkapsulasi/enkapsulasi.dart';

void main(List<String> arguments) {
 PersegiPanjang kotak1, kotak2;

 kotak1 = PersegiPanjang();
 
//  set lebar
 kotak1.setPanjang(double.tryParse(stdin.readLineSync()!)!);
 kotak1.lebar = double.tryParse(stdin.readLineSync()!)!;

 // kotak 2
 kotak2 = PersegiPanjang();
 kotak2.setPanjang(1);
 kotak2.lebar = 1;
 
 print(kotak1.hitungLuas() + kotak2.hitungLuas());


}
```

disini kita perlu membuat method untuk mengeset variabel yang bersifat private agar bisa diakses dari luar class

```dart
// setter
  void setPanjang(double value) {
    if (value < 0) {
      value *= 1;
    }
    _panjang = value;
  }
```

contoh untuk ambil nilai `_panjang` kita bisa buat fungsi seperti ini

```dart
double getPanjang() => _panjang;
```
kalo kita panggil seperti ini

```dart
print(kotak1.getPanjang());
```

kalo dijalankan outputnya seperti ini

```
3
5
16.0
1.0 // ini getter nya
```

#### Menggunakan `Property`

sama seperti getter dan setter kita bisa buat `property` untuk akses private variable

##### Setter Property

```dart
// setter lebar
void set lebar (double value) => _lebar = value;
```

##### Getter Propery

```dart
// getter lebar
double get lebar {
return _lebar;
}
```

kalo kita lihat penggunaan `property` ini sama kaya penggunaan field

```dart
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
    return  this._panjang * this._lebar;
  }
}
```

> didalam sebuah `class` yang baik di jadikan method itu adalah *apa yang bisa dilakukan class tersebut*
> kemudian *apa yang dimiliki cass tersebut itu dijadikan field*

kita dapat membuat properti tanpa field seperti ini

kalo kita lihat hitung luas

```dart
double hitungLuas() {
    return  this._panjang * this._lebar;
  }
```
kita bisa bikin propertynya seperti ini

```dart
double hitungLuas() {
    return  this._panjang * this._lebar;
  }

  // bikin property
  double get luas => this._panjang * this._lebar;
}
```
jadi kita panggilnya

```dart
print(kotak1.luas + kotak2.luas);
```

kode lengkapnya

```dart
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

```

outputnya sama aja

```
2.0
1.0
```

---

[class dan object](../class_objects/README.md) <> [inheritance]()