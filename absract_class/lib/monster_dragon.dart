import 'package:absract_class/flying_monster.dart';
import 'package:absract_class/monster_ubur.dart';

class MonsterDragon extends MonsterUbur implements FlyingMonster, DemonSlayer {
  @override
  String fly() {
    return 'terbang tinggi grr!!!';
  }

  @override
  String killerDemons() {
    return 'Demon is a weak grr';
  }
}
