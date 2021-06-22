### Paradigma OOP

*Objects Orented Programming* adalah paradigma pemrograman dimana kita membuat sebuah sistem tang terdiri dari beberapa object yang saling berinteraksi

beberapa yang harus dikehaui tentang OOP yaitu adalah

* class
* Constructor
* Method

#### Class

`Class` sendiri adalah `blueprint` dari suatu object
kalo dianalogikan seperti sketsa pada sebuah lukisan

#### Field

segala sesuatu yang dimiliki `class`

#### method

adalah apa yang dapat dilakukan oleh si `class` itu sendiri

#### Object

adalah bentuk realisasi atau bentuk nyata dari `class`

#### identifier

adalah itentitas dari sebuah `class` agar si `class` dapat dipanggil

> ketika `identifier` tidak merujuk object apapun maka nilainya `null`

contoh pembuatan `class` seperti ini

```dart
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
```
output

```
20.0
20.0
```

disini kita membuat method `hitungLuas()` untuk menghitung luas persegi panjang.

> Note: keyword `new` dan `this` itu sunnah jadi boleh ditambahkan dan bolehh tidak


### Referensi dan Resource

* [dokumentasi](https://dart.dev/guides/language/language-tou)

---

[List dan Mapping](../mapping/README.md) <> [Enkapsulasi]()
