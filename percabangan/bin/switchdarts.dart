import 'dart:io';

main(List<String> args) {
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input!);

  switch (number) {
    case 0:
      print('bilangan 0');
      break;
    case 1:
      print('bilangan 1');
      break;
    default:
      print('Bilangan Lain');
  }
}
