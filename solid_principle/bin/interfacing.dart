abstract class Hero {
  void regularAttack();
}

// pisah class secara spesifik
abstract class ImagicCaster {
  void castMagic();
}

abstract class Healer {
  void heal();
}

abstract class Stealer {
  void stealMoney();
}

// implementasi
class Thief extends Hero implements Stealer {
  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}

class ShiroMajutsu extends Hero implements Healer, ImagicCaster {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void heal() {
    // TODO: implement heal
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
}

class KuroMajutsu extends Hero implements ImagicCaster {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
}
