void main(List<String> arguments) {
  // final int x = 10;
  var a = const ConstClass(number: 5);
  var b = const ConstClass(number: 5);

//  cek indentitas
  print(identical(a, b));
}

class Regular {
  final int? number;
  Regular({this.number});
}

class ConstClass {
  final int? number;
  const ConstClass({this.number});
}
