void main(List<String> arguments) {
  Person p;
  try {
    p = Person(name: 'pery');
    print(p.age);
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final int age;

  // constructor
  Person({required this.name, this.age = 0}) {
    String pery = 'pery';
    assert(name == pery, 'name not string');
  }
}
