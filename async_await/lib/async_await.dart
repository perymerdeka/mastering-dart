class Person {
  String name = 'default name';

  void getData() {
    name = 'joko';
    print('get data done');
  }

  // method async
  Future<void> getDataAsync() async {
    // buat delay
    await Future.delayed(Duration(seconds: 3));

    name = 'joko';
    print('get data done');
  }
}
