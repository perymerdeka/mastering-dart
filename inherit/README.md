### Inheritance

--- 


pewarisan suattu class diwarisi method dan attribute dari kelas lain kelas yang mewariskan disebut `parent class` kemudian yang menerima warisan disebut `child class`

#### Studi kasus

misalnya kita mempunyai dua buah class

```dart
// monster.dart

class Monster {
  late int _healthPoint;

  int get healthPoint => _healthPoint;
  set healthPoint(value) => _healthPoint = value; 

  String eatHuman() => 'yummy';
}
```

```dart
// hero.dart

class Hero {
  late int _healthPoint;
  
  int get healthPoint => _healthPoint;
  set healthPoint (int value) => _healthPoint = value;

  String killAllMonster()  => 'take this';
}
```
jika kita lihat ada bebrapa duplikat kan

kita bisa buat lebih praktis misalnya kita buat file baru namanya `character.dart` lalu isi dengan

```dart
class Character {
  late int _healthPoint;

  int get healthPoint => _healthPoint;
  set healthPoint(value) {
    if (value < 0) {
      value *= -1;
    }

    _healthPoint = value;
  } 
}
```

kemudian kita ubah seperti ini


untuk pemanggilan kita cukup panggil sekali aja, btw untuk ubahnya bisa diubah seperti ini di tiap `class` yang akan kita
lakukan inheritance

```dart
// lib/hero.dart
import 'package:inherit/character.dart';

class Hero extends Character {
  
  String killAllMonster()  => 'take this';
}
```

```dart
// lib/monster.dart
import 'package:inherit/character.dart';

class Monster extends Character {
  
  String eatHuman() => 'yummy';
}
```

contoh pemanggilanya kaya gini

```dart
// /bin/inherit.dart

import 'package:inherit/hero.dart';
import 'package:inherit/monster.dart';

void main(List<String> arguments) {
  Hero hero = new Hero();
  Monster monster = new Monster();

  // inisialisasi
  hero.healthPoint = -10;
  monster.healthPoint = 30;

  // pemanggilan
  print('Hero HP: ' + hero.healthPoint.toString());
  print('monster HP: ' + monster.healthPoint.toString());

  // object class
  print(hero.killAllMonster());
  print(monster.eatHuman());
}

```

outputnya

```
Hero HP: 10
monster HP: 30
take this
yummy
```

disini kesimpulanya jika menggunaan `inheritance` ketika pengen ubah keseluruhan method kita cukup ubah methodny di `parrent class` kemudian jika ingin menambah method atau mengubah method tertentu yang hanya ada di class turunan kita cukup ubah di `child class` masing-masing. 

#### Contoh Lain

kita bisa mewariskan class lagi secara lebih spesifik lagi misalnya kita `extends` `class` turunan seperti ini

```dart
import 'package:inherit/monster.dart';

class MonsterUbur extends Monster {
  String berenang () => 'slup slup';
}
```

dan 

```dart
import 'package:inherit/monster.dart';

class MonsterBurung extends Monster{
  String fly () {
    return 'woosh';
  }
}
```

keudian dapat kita panggil seperti ini

```dart
import 'package:inherit/hero.dart';
import 'package:inherit/monster.dart';
import 'package:inherit/monster_burung.dart';
import 'package:inherit/monster_ubur.dart';

void main(List<String> arguments) {
  Hero hero = new Hero();
  Monster monster = new Monster();

  // objectt baru
  MonsterUbur ubur = new MonsterUbur();
  MonsterBurung burung = new MonsterBurung();

  // inisialisasi
  hero.healthPoint = -10;
  monster.healthPoint = 30;

  // pemanggilan
  print('Hero HP: ' + hero.healthPoint.toString());
  print('monster HP: ' + monster.healthPoint.toString());

  // object class
  print(hero.killAllMonster());
  print(monster.eatHuman());

  // object baru
  print('Monster Ubur-ubur: ' + ubur.berenang().toString());
  print('Monster Burung: ' + burung.fly().toString());
}
```

outputnya

```
Hero HP: 10
monster HP: 30
take this
yummy
Monster Ubur-ubur: slup slup
Monster Burung: woosh
```

penggunaan lainya kita bisa menampung object ke sebuah list,
contoh

```dart
// tampung object
List monsters = [];

// add object
monsters.add(MonsterUbur());
monsters.add(MonsterBurung());

for (Monster monster in monsters) {
print(monster.eatHuman());
}
```

lengkapnya seperti ini

```dart
import 'package:inherit/hero.dart';
import 'package:inherit/monster.dart';
import 'package:inherit/monster_burung.dart';
import 'package:inherit/monster_ubur.dart';

void main(List<String> arguments) {
  Hero hero = new Hero();
  Monster monster = new Monster();

  // objects baru
  MonsterUbur ubur = new MonsterUbur();
  MonsterBurung burung = new MonsterBurung();

  // tampung object
  List monsters = [];

  // add object
  monsters.add(MonsterUbur());
  monsters.add(MonsterBurung());

  for (Monster monster in monsters) {
    print(monster.eatHuman());
  }
}
```

disini kita menjalankan 2 method dari sebuah class outpunya

```
yummy
yummy
```


### Keywords `as`dan `is`

#### Keyword is

keyword ini biasa digunakan untuk mengecek sebuah `object`

contoh

```dart
for (Monster monster in monsters) {
  if (monster is MonsterBurung) {
      print(monster.eatHuman());
  }
}
```

maka keluarnya hanya satu aja

```
yummy
```
#### Keyword `as`

keyword ini digunakan untuk mendefinisikan secara spesifik suatu object contoh seperti ini

```dart
// keyword as
print('monster burung');
print((m as MonsterBurung).fly());
```
lengkap penerapanya begini

```dart
import 'package:inherit/hero.dart';
import 'package:inherit/monster.dart';
import 'package:inherit/monster_burung.dart';
import 'package:inherit/monster_ubur.dart';

void main(List<String> arguments) {
  Hero hero = new Hero();
  Monster m = new MonsterBurung();

  // objects baru
  MonsterUbur ubur = new MonsterUbur();
  MonsterBurung burung = new MonsterBurung();

  // tampung object
  List monsters = [];

  // add object
  monsters.add(MonsterUbur());
  monsters.add(MonsterBurung());

  // keyword as
  print('monster burung');
  print((m as MonsterBurung).fly());
}
```

outputnya seperti ini

```
monster burung
woosh
yummy
```

> Note: Contoh kasusnya seperti ini
> kalo misalnya kita membuat turunan dari suato object lebih dari 1 `class` maka 
> untuk untuk mengeksekusi method dari class tertentu yang mempunyai turunan sama
> dengan class lainya kita bisa pake keyword `as`

---

[enkapsulasi](../enkapsulasi/README.md)  <> [Abstract Class]()
