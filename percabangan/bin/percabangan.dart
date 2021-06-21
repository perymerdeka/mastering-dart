import 'dart:io';

main(List<String> args) {
  String? input = stdin.readLineSync();
  var number = int.tryParse(input!);

  if (number! > 0) {
    print('bilangan positif');
  } else if (number < 0) {
    print('bilangan negatif');
  } else {
    print('bilangan 0');
  }
}
