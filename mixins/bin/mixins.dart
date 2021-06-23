import 'package:mixins/drink_ability_mixins.dart';
import 'package:mixins/hero.dart';
import 'package:mixins/kinshi.dart';
import 'package:mixins/monster.dart';
import 'package:mixins/monster_burung.dart';
import 'package:mixins/monster_dragon.dart';
import 'package:mixins/monster_ubur.dart';
import 'package:mixins/shogun.dart';

void main(List<String> arguments) {
  // tampung object

  List <Hero> heroes = [];
  List<Monster> monsters = [];

  // add object
  Ninja ninja = Ninja();
  print(ninja.swords());

  monsters.add(MonsterUbur());
  monsters.add(MonsterBurung());
  monsters.add(MonsterDragon());

  for (Monster m in monsters) {
    if (m is DrinkAbilityMixin) {
      print((m as DrinkAbilityMixin).drink());
    }
  }
}
