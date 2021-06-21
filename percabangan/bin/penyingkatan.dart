import 'dart:io';

main(List<String> args) {
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input!);

  String output;

  // penyingkatan
  output = (number! > 0) ? 'postitif' : 'negatif';

//  cetak kondisi
  print(output);
}
