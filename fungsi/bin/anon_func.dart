int matematika(int num1, int num2, Function counting) => counting(num1, num2);

void main(List<String> arguments) {
  // cetak fungsi
  print("hasil perhitungan " +
      matematika(10, 20, (int num1, int num2) => num1 + num2).toString());
}
