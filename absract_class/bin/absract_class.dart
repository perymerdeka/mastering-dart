import 'package:absract_class/hero.dart';
import 'package:absract_class/monster.dart';
import 'package:absract_class/monster_burung.dart';
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
  // keyword as
  print('monster burung');
  print((m as MonsterBurung).fly());

  for (Monster monster in monsters) {
    if (monster is MonsterBurung) {
      print(monster.eatHuman());
      print('cara jalan');
      print(monster.move());
    }
  }
}
