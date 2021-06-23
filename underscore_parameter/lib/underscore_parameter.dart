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
