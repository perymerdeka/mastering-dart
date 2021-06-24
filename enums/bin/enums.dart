void main(List<String> arguments) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.poisoned);
  print('ini method');
  m
    ..move()
    ..eat();
}

// enum
enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final UcoaStatus status; // 1. normal, 2. poisoned, 3. confusing

  // constructor
  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print('Ucoa is Moving');
        break;
      case UcoaStatus.poisoned:
        print('Ucoa Cammot Move need Help');
        break;
      case UcoaStatus.confused:
        print('Ucoa is Confusing');
        break;
      default:
    }
  }

  void eat() {
    print('Ucoa is Eating');
  }
}
