### Static Keywords

`static` ini menyatakan bahwa member dari sebuah class  bisa berupa (*field/method*) itu menjadi milik class tersebut

```dart
class Person {
  String? name;
  int? age;
  static int maxAge = 150;

  // constructor
  Person (this.name, int age) {
    this.age = (age > 150) ? 150 : age;
  }
}
```

kemudian kita panggi dari `main` seperti ini

```dart
import 'package:static_keywords/static_keywords.dart';

void main(List<String> arguments) {
  Person p = Person('david', 170);

  print(p.maxAge);
}
```

jika kita jalankan maka akan menjadi error

```
Error: The getter 'maxAge' isn't defined for the class 'Person'.
 - 'Person' is from 'package:static_keywords/static_keywords.dart' ('lib/static_keywords.dart').
Try correcting the name to the name of an existing getter, or defining a getter or field named 'maxAge'.
  print(p.maxAge);
```

karena field `maxAge` bukan milik si object tersebut jd tidak akan dikenali, beda lagi ceritanya kalo kita ubah seperti ini

```dart
import 'package:static_keywords/static_keywords.dart';

void main(List<String> arguments) {
  Person p = Person('david', 170);

  print(Person.maxAge);
}
```

disini kita definisikan kita akan mengakses `maxAge` milik si `Person` jika kita jalankan hasilnya

```
150
```

kelebihan `static` ini kalo kita taruh suatu field ini di satu class maka akan memakan tempat cuman 1,
beda lagi kalo nyimpen di object kita bakal punya 1 field/variabel yang punya nilai yang sama tiap kali kita buat object

---

[Parameter Underscore](../underscore_parameter/README.md)  <> [Async Await dan Future](../async_await/README.md) 