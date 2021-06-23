import 'package:mixins/drink_ability_mixins.dart';
import 'package:mixins/flying_monster.dart';
import 'package:mixins/monster_ubur.dart';

class MonsterDragon extends MonsterUbur with DrinkAbilityMixin
    implements FlyingMonster, DemonSlayer {
  @override
  String fly() {
    return 'terbang tinggi grr!!!';
  }

  @override
  String killerDemons() {
    return 'Demon is a weak grr';
  }
}

