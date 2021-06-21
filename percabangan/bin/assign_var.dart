import 'dart:io';

main(List<String> args) {
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input!);

  String output;

  if (number! > 0) {
    output = 'positif';
  } else if (number < 0) {
    output = 'bilangan negatif';
  } else {
    output = 'bilangan 0';
  }

//  cetak kondisi
  print(output);
}
