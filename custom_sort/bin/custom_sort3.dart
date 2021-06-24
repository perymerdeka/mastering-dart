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
