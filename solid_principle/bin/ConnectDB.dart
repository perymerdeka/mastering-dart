class User {}

class UserManager {
  final IDataStorage datastorage;

  UserManager(this.datastorage);

  void saveDataStorage(User user) {
    datastorage.saveData(user);
  }
}

// bergantung disini high Levelnya
abstract class IDataStorage {
  void saveData(User user);
}

// abstraction tidak bergantung pada detil

class FireBaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to Firebase
    // save data
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // TODO: implement saveData
    // connect data to local
    // save data
  }
}
