

import 'package:mixins/monster.dart';

class MonsterBurung extends Monster {
  String fly() {
    return 'woosh';
  }

  @override
  String move() {
    return 'pake sayap';
  }

  // new object
  @override
  String eatHuman() {
    return 'sruput';
  }
}
