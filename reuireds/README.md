### `Required` `Assert` dan `Try Catch`

#### `Required`

mengubah optional parameter jadi wajib

```dart
Person({required this.name,  this.age = 0});
```

implementasi

```dart

void main(List<String> arguments) {
  Person p;
  p = Person();
  print(p.age);

}

class Person {
  final String name;
  final int age;

  // constructor
Person({required this.name,  this.age = 0});
}

```

kalo person ga diisi maka akan error

```
The named parameter 'name' is required, but there's no corresponding argument.
```

beda lagi klo implementasinya seperti ini

```dart

void main(List<String> arguments) {
  Person p;
  p = Person(name: 'feri');
  print(p.age);

}

class Person {
  final String name;
  final int age;

  // constructor
Person({required this.name,  this.age = 0});
}
```

jika kita lihat kita isi paramater yang dibutuhkan seperti ini

```dart
p = Person(name: 'feri');
```

#### `Assert`

`assert` digunakan untuk mengecek apakah bilai yang dimasukan sesuai yang diharapkan atau tidak, kemablian nya adalah pesan error

```dart
class Person {
  final String name;
  final int age;

  // constructor
  Person({required this.name, this.age = 0}){
    assert(name == String, 'name not string');
  }
}
```

dalam  `assert` expresi harus mengembalikan boolean

### `try` dan `catch`

untuk menangani error kita bisa pake `try catch`

```dart
 try {
    p = Person(name: 'pery');
    print(p.age);
  } catch (e) {
    print(e);
  }
```

lengkapnya

```dart
void main(List<String> arguments) {
  Person p;
  try {
    p = Person(name: 'pery');
    print(p.age);
  } catch (e) {
    print(e);
  }
}

```

---
[Enum dan Cascade Notation](../enums/README.md) <> [Custom Sort dan ForEach](../custom_sort/README.md)