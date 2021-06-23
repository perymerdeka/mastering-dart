### Paramater Underscore

biasanya dalam paeramater ada paramater yang di isi dengan underscore, itu artinya kita akan mengabaikan nilai yang akan dimasukan dalam parameter tersebut

```dart
class Person {
  String? name;
  Function(String name)? doHobby;

  // constructor
  Person(this.name, {this.doHobby});

  // method
  void takeARest() {
    if (doHobby != null) {
      doHobby!(name!);
    }
  }
}
```

kemudian pemanggilanya seperti ini

```dart
import 'package:underscore_parameter/underscore_parameter.dart';

void main(List<String> arguments) {
  var person = Person('feri', doHobby: feriHobby);

// panggil method
  person.takeARest();
}

void feriHobby(String name) {
  print('$name learn code everyday');
}
```

hasilnya

```
feri learn code everyday
```

### Penyingkatan

kita dapat menyingkat menjadi seperti ini

```dart
import 'package:underscore_parameter/underscore_parameter.dart';

void main(List<String> arguments) {
  var person = Person('feri', doHobby: (String name) {
    print('$name learn code everyday');
  });

// panggil method
  person.takeARest();
}
```

hasilnya sama aja

```
feri learn code everyday
```

bisa kita lihat bahwa paramater `name` gak kepake maka dari itu kita ganti underscore seperti ini

```dart
import 'package:underscore_parameter/underscore_parameter.dart';

void main(List<String> arguments) {
  var person = Person('feri', doHobby: (_) {
    print('learn code everyday');
  });

// panggil method
  person.takeARest();
}
```

hasilnya

```
learn code everyday
```

---
[Constructor](../constructors/README.md)  <>  [Static Keywords](../static_keywords/README.md)