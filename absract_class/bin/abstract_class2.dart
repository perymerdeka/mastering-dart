import 'package:absract_class/flying_monster.dart';
import 'package:absract_class/hero.dart';
import 'package:absract_class/monster.dart';
import 'package:absract_class/monster_burung.dart';
import 'package:absract_class/monster_dragon.dart';
import 'package:absract_class/monster_ubur.dart';

void main(List<String> arguments) {
  Hero hero = new Hero();
  Monster m = new MonsterBurung();

  // objects baru
  MonsterUbur ubur = new MonsterUbur();
  MonsterBurung burung = new MonsterBurung();

  // tampung object
  List monsters = [];

  // add object
  monsters.add(MonsterUbur());
  monsters.add(MonsterBurung());
  monsters.add(MonsterDragon());
  // keyword as
  print('monster burung');
  print((m as MonsterBurung).fly());

  for (Monster monster in monsters) {
    if (monster is FlyingMonster) {
      print((monster as FlyingMonster).fly());
    }
  }
}
