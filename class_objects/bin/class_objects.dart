main(List<String> args) {
  PersegiPanjang kotak1, kotak2;

  // membuat object
  kotak1 = new PersegiPanjang();
  kotak2 = new PersegiPanjang();

  kotak1.lebar = 10;
  kotak1.panjang = 2;

  // kotak 2
  kotak2.lebar = 10;
  kotak2.panjang = 2;

  // hitung luas kotak
  double luasKotak = kotak1.hitungLuas();

  // luas kotak 2
  double luasKotak2 = kotak2.hitungLuas();

  // cetak hasil;
  print(luasKotak);
  print(luasKotak2);
}

class PersegiPanjang {
  late double panjang;
  late double lebar;

  double hitungLuas() {
    return this.panjang * this.lebar;
  }
}
