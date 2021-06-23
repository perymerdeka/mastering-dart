### Constructor

`constructor` adalah method khusus yang dipanggil pertama kali ketika kita membuat sebuah class dan
nama `constructor` tersebut sama dengan nama `classnya`
`constructor` sendiri tidak punya tipe kembalian

#### Constructor ini Apa

* `constructor` fungsinya adalah membuat object dari classnya
* selain itu di `constructor` kita dapat menaruh segala sesuatu yang ingin dilakukan ketika `object` tersebut dibuat

#### Contoh constructor

```dart
class Person {
  String? name;
  Person() {
    name = 'no name';
  }
}
```

nah ketika kita inisiasi di main

```dart
import 'person.dart';

void main(List<String> arguments) {
  Person p = Person();
  print(p.name);
}
```

kemudian kita cetak maka akan mencetak `no name`

```
no name
```

### Constructor dengan Parameter

untuk menambahkan parameter kita pake keyword `this` contoh

```dart
class Person {
  String? name;
  Person(String name) {
    this.name = name;
  }
}
```

kita panggilnya

```dart
import 'person.dart';

void main(List<String> arguments) {
  Person p = Person('Feri');
  print(p.name);
}
```

hasilnya

```
Feri
```

### Comstructor dengan nilai default

kita bisa pake [optional named parameter](../fungsi/README.md) contoh seperti ini

```dart
class Person {
  String? name;
  Person({String name = 'no name'}) {
    this.name = name;
  }
}
```

kalo ga diisi keluarnya `no name` tapi kalo diisi

```dart
import 'person.dart';

void main(List<String> arguments) {
  Person p = Person(name: 'feri');
  print(p.name);
}
```

hasilnya akan keluar `feri`

### Constructor dalam inheritance

dalam inheritance yang pertama kali di eksekusi adalah `parent constructor` baru turunanya urut sampai kebawah

```dart
class Person {
  String? name;
  Person({String name = 'no name'}) {
    print('Constructor Person');
    this.name = name;
  }
}
```
kemudian

```dart
import 'person.dart';

class Student extends Person {
  Student() {
    print('Student Constructor');
  }
}
```

lalu kita panggil

```dart
import 'person.dart';
import 'student.dart';

void main(List<String> arguments) {
  Person p = Student();
  print(p.name);
}
```

jika dijalankan hasilnya


```
Constructor Person
Student Constructor
no name
```

nah yang dipanggil oleh `child class` yaitu si `Student` secara default adalah constructor yang kosomg
jika kita mau mendefinisikan constructor mana yang harus dipakai si `child class` atau si `student`
kita bisa pakai seperti imi

```dart
import 'person.dart';

class Student extends Person {
  Student() : super('student baru'){
    print('Student Constructor');
  }
}
```

dalam kasus ini ketika parrent gak punya constructor kosong seperti ini

```dart
class Person {
  String? name;
  Person(String name) {
    print('Constructor Person');
    this.name = name;
  }
}
```

pemanggilanya sama kaya tadi

```dart
import 'person.dart';
import 'student.dart';

void main(List<String> arguments) {
  Person p = Student();
  print(p.name);
}
```

hasilnya dia akan membuat constructor baru

```
Constructor Person
Student Constructor
student baru
```

sama seperti

```dart
import 'person.dart';

class Student extends Person {
  Student() : super(name: 'student baru'){
    print('Student Constructor');
  }
}
```

### Menambah Parameter

untuk menambah parameter, bisa, contoh seperti ini

```dart
import 'person.dart';

class Student extends Person {
  Student({String studentName = 'student baru'}) : super(name: studentName){
    print('Student Constructor');
  }
}
```

### Resource dan Referensi
* [Dokumentasi Constructor](https://dart.dev/guides/language/language-tour#using-constructors)

---

[Mixins](../mixins/README.md)  <>  [Parameter Underscore](../underscore_parameter/README.md)