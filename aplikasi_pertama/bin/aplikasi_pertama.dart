import 'dart:io';

void main(List<String> arguments) {
  String? input = stdin.readLineSync();

  // konversi type data
  int? number = int.tryParse(input!);


  // menampikna ke layar
  print(number! + 12);
}
