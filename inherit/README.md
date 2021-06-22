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

