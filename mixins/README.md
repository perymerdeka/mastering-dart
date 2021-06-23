### Mixins

`Mixins` mirip seperti interface,  hanya aja bedanya kalo `interface` itu memaksakan method/periaku yang dimiliki oleh interface tadi
kalo si `Mixins` itu menambahkan. contoh

kita buat `mixin`

```dart
// lib/drink_ability_mixin.dart

mixin DrinkAbilityMixin {
  String drink() => 'mbeerr';
}
```

lalu kita taruh dengan keyword `with`

```dart
import 'package:mixins/drink_ability_mixins.dart';
import 'package:mixins/flying_monster.dart';
import 'package:mixins/monster_ubur.dart';

class MonsterDragon extends MonsterUbur
    with DrinkAbilityMixin
    implements FlyingMonster, DemonSlayer {
  @override
  String fly() {
    return 'terbang tinggi grr!!!';
  }

  @override
  String killerDemons() {
    return 'Demon is a weak grr';
  }
}
```

> Note: Pastikan selalu menaruh dengan `with` sebelum keyword `implements` arag tidak error

ketika kita implementasi di main
maka seperti ini

```dart
for (Monster m in monsters) {
    if (m is DrinkAbilityMixin) {
      print((m as DrinkAbilityMixin).drink());
    }
}
```

lengkapnya

```dart
import 'package:mixins/drink_ability_mixins.dart';
import 'package:mixins/hero.dart';
import 'package:mixins/monster.dart';
import 'package:mixins/monster_burung.dart';
import 'package:mixins/monster_dragon.dart';
import 'package:mixins/monster_ubur.dart';

void main(List<String> arguments) {
  // tampung object
  List<Monster> monsters = [];

  // add object
  monsters.add(MonsterUbur());
  monsters.add(MonsterBurung());
  monsters.add(MonsterDragon());

  for (Monster m in monsters) {
    if (m is DrinkAbilityMixin) {
      print((m as DrinkAbilityMixin).drink());
    }
  }
}
```

hasilnya

```
mbeerr
```

#### `Mixins` hanya untuk class tertentu

kita bisa set sebuah mixins hanya boleh dimiliki di class tertentu, kita pake keyword `on` misalnya

```dart
import 'package:mixins/hero.dart';

mixin Knight  on Hero{
  String swords () => 'increase power to kill monster';
}
```
kemudian kita buat class baru turunan dari `Hero` maka bisa di tambahkan mixins nya

```dart
import 'package:mixins/hero.dart';
import 'package:mixins/kinshi.dart';

class Ninja extends Hero with Knight {

}
```

kemudian kita bisa panggil begini

```dart
Ninja ninja = Ninja();
print(ninja.swords());
```
lengkapnya seperti ini

```dart
import 'package:mixins/drink_ability_mixins.dart';
import 'package:mixins/hero.dart';
import 'package:mixins/kinshi.dart';
import 'package:mixins/monster.dart';
import 'package:mixins/monster_burung.dart';
import 'package:mixins/monster_dragon.dart';
import 'package:mixins/monster_ubur.dart';
import 'package:mixins/shogun.dart';

void main(List<String> arguments) {
  // tampung object

  List <Hero> heroes = [];
  List<Monster> monsters = [];

  // add object
  Ninja ninja = Ninja();
  print(ninja.swords());

  monsters.add(MonsterUbur());
  monsters.add(MonsterBurung());
  monsters.add(MonsterDragon());

  for (Monster m in monsters) {
    if (m is DrinkAbilityMixin) {
      print((m as DrinkAbilityMixin).drink());
    }
  }
}
```

hasilnya

```
increase power to kill monster
mbeerr
```

### Little Notes

* `inheritance` adalah mewariskan perilaku/method pada class turunannya (`extends`) dan hanya bisa 1 kali aja
* `interface` adalah memaksakan *behavior*/perilaku yang dimiliki oleh `interface` tersebut kepada class yang meng (`implements`) nya (*jadi harus `override`*)
* `mixins` menambah perilaku atau *behavior* yang dimiliki `mixins` ke sebuah class (`with`), dan sebuah class dapat pakai banyak `mixins`

---

### Resource dan Referensi

* [dokumentasi dart: Mixin](https://dart.dev/guides/language/language-tour#adding-features-to-a-class-mixins)

---

[Abstract Class dan Interface](../absract_class/README.md) <> [Constructor](../constructors/README.md)