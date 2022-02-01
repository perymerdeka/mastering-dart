### Singleton

`Singleton` adalah `design pattern` dimana satu buah class hanya bisa dibuat menjadi satu buah object

contoh seperti ini

```dart
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
```

untuk main seperti ini

```dart
void main(List<String> arguments) {
  ServiceSingleton service1 = ServiceSingleton();
  ServiceSingleton service2 = ServiceSingleton();

  // check object
  if (service1 == service2) {
    print('sama');
  } else {
    print('tidak sama');
  }
}
```

hasilnya

```
sama
```

---
[Operator Override](../operator_overriding/README.md)  <> [Future Or](../furure_or/README.md)
