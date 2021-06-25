### SOLID Principle

chapter kali ini akan membahas hal yang penting yaitu `SOLID`

* `S` - Single Responsibility Principle
* `O` - Open/Closed Principle
* `L` - Listkov Substitution Principle
* `I` - Interface Segregation Principle
* `D` - Dependencies Inversion Principle

### Single Responsibility Principle

sebuah class harus fokus pada 1 task tertentu jangan sampai ada `SuperClass` (*Class yang tidak fokus pada 1 tugas*)

contoh

```dart
class Car {
  late AirConditioner airConditioner;
  late Radio radio;

  void turnOnCar() {
    //..
  }
  void turnOffCar() {
    //..
  }
}

class AirConditioner {
  void turnOnAirConditioner() {
    //..
  }
  void turnOffAirConditioner() {
    //..
  }
}

class Radio {
  void playMusic() {
    //..
  }
}
```

strukttur class seperti ini akan memudahkan kita untuk mencari sebuah bug

### Open/Closed Principle

sebuah class baiknya adalah `Close` untuk Modifikasi dan `Open` untuk Extension contoh
kalo kita punya class itu baiknya ga bisa diubah ubah kalo misal mau tambah fitur itu baiknya kita tambah bukan malah ubah si `class` nya :)

misal kita punya class seperti ini

```dart
class Heroes {
  void killMonster() {
    //..
  }
  void walk() {
    //...
  }
}

```

kita mau menambah fitur dia bisa Punya skill Khusus misalnya ada teknik pukul kita ga boleh ubah class
karena nanti ada impact ketika atda yang menggunakan aplikasi kita/method yang dulu kita buat
ini bakal ngaruh sama sisten kita yang lain? jadi kita buat aja class baru untuk fitur ini

```dart
lass Heroes {
  void killMonster() {
    //..
  }
  void walk() {
    //...
  }
}


// class untuk fitur baru
class KiritoSwords extends Heroes {
  void doubleWeapon() {
    //..
  }
  void onePunch() {
    //..
  }
}
```

jadi method lama tetep ada kita tambah aja fitur baru di extends class nya lengkapnya baca lagi ke halaman [inheritance](../inherit/README.md) :)

### Listkov Substitution Principle

Setiap Class yang merupakan turunan dari `class parent` itu harus memiliki sifat/perilaku dari `parent class` nya jadi nanti lebih  mudah buat cari bug, tambah fitur, ngoding juga lebih enak

```dart
class Cat {
  void eat() {
    //..
  }
  void walk() {
    //..
  }
  void sleep() {
    //..
  }
}

// dikelompokan dalam 1 jenis parent nya

class Anggora extends Cat {
  @override
  void eat() {
    //... makan dengan gaya anggora
  }
}
```

### Interface Segregation Principle

jadi ketika kita membuat `interface` itu harus spesifik ke tujuan tertentu, di suatu `class` kita jangan meng-implementasi
sesuatu yang tidak dibutuhkan, contoh


```dart
abstract class Hero {
  void regularAttack();
}

// pisah class secara spesifik
abstract class ImagicCaster {
  void castMagic();
}

abstract class Healer {
  void heal();
}

abstract class Stealer {
  void stealMoney();
}

// implementasi
class Thief extends Hero implements Stealer {
  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}

class ShiroMajutsu extends Hero implements Healer, ImagicCaster {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void heal() {
    // TODO: implement heal
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
}

class KuroMajutsu extends Hero implements ImagicCaster {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
}
```

dengan demikian ga bakal ada lagi method yang ga kepake :) jadi kita bener2 implementasi method yang bener2 dibutuhkan

### Dependencies Inversion Principle

dalam prinsip ini `High-Level Module` tidak boleh bergantung dengan `Low-level Module` keduanya harus bergantung pada `abstraction`
sedangkan `abstraction` tidak boleh bergantung pada `detail` harusnya si `detail` yang bergantung pada `abstract`

* `low level module`: bagian yang sering buerubah
* `High Level Model` : bagian yang jarang berubah

agar lebih tau gambaranya seperti ini

```dart
class User {}

class UserManager {
  final IDataStorage datastorage;

  UserManager(this.datastorage);

  void saveDataStorage(User user) {
    datastorage.saveData(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);
}

class FireBaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to Firebase
    // save data
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // TODO: implement saveData
    // connect data to local
    // save data
  }
}
```

sekarang kita lihat bahwa `High Level Module` bergantung patda `abstraction` tapi abstraction tidak bergabtung pada detail

---

[Custom Sort dan For Each](../custom_sort/README.md) <> [Operator Overriding]()