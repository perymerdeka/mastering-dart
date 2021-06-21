main(List<String> args) {
  int a, b;

  a = 10; // berunah jadi 11 karena ditambah
  b = ++a; // hasilnya b = 11 (ditambah dulu baru dipake)
  print('isi dari a adalah ' + a.toString());
  print('isi dari b adalah ' + b.toString());
}