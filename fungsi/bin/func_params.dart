double segitiga(int a, int b) => 0.5 * a * b;

void main(List<String> arguments) {
  // cetak fungsi
  Function tiga = segitiga;
  print("hasil perhitungan " + tiga(5, 10).toString());
}
