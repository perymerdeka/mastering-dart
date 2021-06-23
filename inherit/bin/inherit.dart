import 'package:inherit/hero.dart';
import 'package:inherit/monster.dart';
import 'package:inherit/monster_burung.dart';
import 'package:inherit/monster_ubur.dart';

void main(List<String> arguments) {
  Hero hero = new Hero();
  Monster monster = new Monster();

  // objectt baru
  MonsterUbur ubur = new MonsterUbur();
  MonsterBurung burung = new MonsterBurung();

  // inisialisasi
  hero.healthPoint = -10;
  monster.healthPoint = 30;

  // pemanggilan
  print('Hero HP: ' + hero.healthPoint.toString());
  print('monster HP: ' + monster.healthPoint.toString());

  // object class
  print(hero.killAllMonster());
  print(monster.eatHuman());

  // object baru
  print('Monster Ubur-ubur: ' + ubur.berenang().toString());
  print('Monster Burung: ' + burung.fly().toString());
}
