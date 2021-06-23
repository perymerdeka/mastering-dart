import 'package:mixins/character.dart';

abstract class Monster extends Character {
  String eatHuman() => 'yummy';
  String move();
}
