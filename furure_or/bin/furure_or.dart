import 'dart:async';

void main(List<String> arguments) async{
  User user = User();
  UserManager userManager = UserManager(FireBaseStorage());
  print(await userManager.getUserAge(user));
}

class User {
  // User Related Data
  int age = 0;
}

class UserManager {
  final IDataStorage datastorage;

  UserManager(this.datastorage);

  void saveDataStorage(User user) {
    datastorage.saveData(user);
  }

  // future or
  FutureOr<int> getUserAge(User user) async {
    return await datastorage.getUserAge(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}

class FireBaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to Firebase
    // save data
  }
  @override
  FutureOr<int> getUserAge(User user) async {
    // TODO: implement getUserAge
    // ambil user age
    await Future.delayed(Duration(seconds: 3));
    return 20;
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // TODO: implement saveData
    // connect data to local
    // save data
  }

  @override
  FutureOr<int> getUserAge(user) {
    // ambil tanggal lahir
    // bandingkan
    // hitung umur
    return 10;
  }
}
