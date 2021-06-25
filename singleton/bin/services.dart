import 'user.dart';

class Services {
  Future<User> getUserData() async {
    // get User Data Process
    return User();
  }
}

// singleton
class ServiceSingleton {
  static final ServiceSingleton _instance = ServiceSingleton._internal();

  ServiceSingleton._internal();

  factory ServiceSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    // get User Data Process
    return User();
  }
}
