import 'dart:io';

import 'package:enkapsulasi/enkapsulasi.dart';

void main(List<String> arguments) {
  PersegiPanjang kotak1, kotak2;

  kotak1 = PersegiPanjang();

//  set lebar
  kotak1.setPanjang(double.tryParse(stdin.readLineSync()!)!);
  kotak1.lebar = double.tryParse(stdin.readLineSync()!)!;

  // kotak 2
  kotak2 = PersegiPanjang();
  kotak2.setPanjang(1);
  kotak2.lebar = 1;

  print(kotak1.luas + kotak2.luas);

  // ambil nilai
 print(kotak1.getPanjang());
}
