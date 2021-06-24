### Custom Sort dan For `Each`

### `ForEach`

untuk mengakses method dari object yang ditampung pada sebuah list kita bisa pake `forEach`

```dart
// looping
persons.forEach((element) {
  print(element.role! + ' - ' + element.age.toString());
});
```

lengkapnya

```dart
void main(List<String> arguments) {
  List<Person> persons = [
    Person('Admin', 23),
    Person('User', 19),
    Person('Merchart', 33),
    Person('admin', 22),
  ];

  // looping
  persons.forEach((element) {
    print(element.role! + ' - ' + element.age.toString());
  });
}

class Person {
  String? role;
  late final int age;

  // constructor
  Person(this.role, this.age);
}
```

hasilnya

```
Admin - 23
User - 19
Merchart - 33
admin - 22
```

### Custom Sort

kita dapat menggunakan keyword `sort` 

```dart
// sorting
  persons.sort((p1, p2) => p1.age - p2.age);
```
lengkapnya

```dart
void main(List<String> arguments) {
  List<Person> persons = [
    Person('Admin', 23),
    Person('User', 19),
    Person('Merchart', 33),
    Person('admin', 22),
  ];

  // sorting
  persons.sort((p1, p2) => p1.age - p2.age);

  // looping
  persons.forEach((element) {
    print(element.role! + ' - ' + element.age.toString());
  });
}

class Person {
  String? role;
  late final int age;

  // constructor
  Person(this.role, this.age);
}
```

keteranganya bisa baca di [halaman List dan Mapping](../mapping/README.md)

hasilnya

```
Admin - 23
User - 19
Merchart - 33
admin - 22
```
#### Compare

kita bisa mengurutkan berdasarkan string mengunakan `compareTo`

```dart
 persons.sort((p1, p2) => p1.role.compareTo(p2.role));
```

lengkapnya

```dart
void main(List<String> arguments) {
  List<Person> persons = [
    Person('Admin', 23),
    Person('User', 19),
    Person('Merchart', 33),
    Person('Admin', 22),
  ];

  // sorting
  persons.sort((p1, p2) => p1.role.compareTo(p2.role));

  // looping
  persons.forEach((element) {
    print(element.role+ ' - ' + element.age.toString());
  });
}

class Person {
  String role;
  late final int age;

  // constructor
  Person(this.role, this.age);
}
```

hasilnya

```dart
Admin - 23
Admin - 22
Merchart - 33
User - 19
```

jika ingin lebih kompleks gini penggunaanya, misal mau mengurutkan umur dan role

```dart
persons.sort((p1, p2) {
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  });
```
lengkapnya

```dart
void main(List<String> arguments) {
  List<Person> persons = [
    Person('Admin', 23),
    Person('User', 19),
    Person('Merchart', 33),
    Person('Admin', 22),
    Person('Admin', 23),
    Person('User', 20),
    Person('Merchart', 55),
    Person('Admin', 22),
  ];

  // sorting
  persons.sort((p1, p2) {
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  // looping
  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  String role;
  late final int age;

  // constructor
  Person(this.role, this.age);
}
```

hasilnya

```
Admin - 22
Admin - 22
Admin - 23
Admin - 23
Merchart - 33
Merchart - 55
User - 19
User - 20
```

kalo mau custom lagi pengurutanya kita bisa pake switch case untuk memberi tanda mana yang mau kita urutkan terlebih dahulu

```dart
persons.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });
```

lengkapnya

```dart
void main(List<String> arguments) {
  List<Person> persons = [
    Person('Admin', 23),
    Person('User', 19),
    Person('Merchart', 33),
    Person('Admin', 22),
    Person('Admin', 23),
    Person('User', 20),
    Person('Merchart', 55),
    Person('Admin', 22),
  ];

  // sorting
  persons.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  // looping
  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  String role;
  late final int age;

  // constructor
  Person(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case 'Merchart':
        return 1;
        break;
      case 'Admin':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
```

hasilnya

```dart
Merchart - 33
Merchart - 55
Admin - 22
Admin - 22
Admin - 23
Admin - 23
User - 19
User - 20
```

---

[Required, Assert dan Try Catch](../reuireds/README.md) <> [Solid Principle]()