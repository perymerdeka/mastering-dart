
double segitiga(int a, int b) {
  return 0.5 * a * b;
}

void main(List<String> arguments) {
  // panggil fungsi
  double luas = segitiga(5, 10);

  // cetak fungsi
  print('hasil perhitunganya adalah: ' + luas.toString());
}
