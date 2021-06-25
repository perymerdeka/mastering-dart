void main(List<String> arguments) {
  Hero a = Hero(20);
  Hero b = Hero(10);

  // test
  print(a > b);
}

class Hero {
  late final int power;

  Hero(this.power);

  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

// override operator
  @override
  bool operator ==(var other) {
    // TODO: implement ==
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }

  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }
}
