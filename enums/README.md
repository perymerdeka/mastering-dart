### Enums

ketika kita melakukan switch case pada paramaternya katakanlah parameter status  jadi untuk memberikan object
dengan status tertentu kita bisa pake enum 

```dart
// enum
enum UcoaStatus {normal, poisoned, confused}
```

penerapan lengkapnya

```dart
void main(List<String> arguments) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.poisoned);

  // move
  m.move();
}

// enum
enum UcoaStatus {normal, poisoned, confused}

class MonsterUcoa {
  final UcoaStatus status; // 1. normal, 2. poisoned, 3. confusing

  // constructor
  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch(status) {
      case UcoaStatus.normal:
        print('Ucoa is Moving');
        break;
      case UcoaStatus.poisoned:
        print('Ucoa Cammot Move need Help');
        break;
      case UcoaStatus.confused:
        print('Ucoa is Confusing');
        break;
      default:
    }
  }
  void eat() {
    print('Ucoa is Eating');
  }
}
```

kalo dijalankan outputnya

```
Ucoa Cammot Move need Help
```

### Cascade Notation

`Cascade Notation` digunakan ketika memanggil beberapa method terhadap satu buah object yang sama
secara berurutan kita bisa pakai `..`

```dart
void main(List<String> arguments) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.poisoned)
    ..move()
    ..eat();
}
```

atau seperti ini jika terputus oleh perintah lain

```dart
void main(List<String> arguments) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.poisoned);
  print('ini method');
  m
    ..move()
    ..eat();
}
```

hasilnya 
```
Ucoa Cammot Move need Help
Ucoa is Eating
```

--- 

[Generic dan Generic Type](../generic/README.md)  <> [Required, Assert dan Try Catch]()