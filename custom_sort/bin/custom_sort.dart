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
  persons.sort((p1, p2) => p1.role.compareTo(p2.role));

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
