### Fungsi, Optional Parameter dan Lambda Expression

---

### Fungsi

fungsi adaahh sekumpulan statement yang independen 
dan hanya melakukan tugas secara spesifik atau tertentu saja


fungsi dapat mengembalikan nilai (*optional*) pada pemanggil, jika tidak mengembalikan nilai apapun maka tipenya adalah `void`

#### analogi fungsi

kalo diibaratkan gambaranya seperti **membuat es rumput laut**

![analogi fungsi](docs/resep_es_rumput_laut_2.jpg)

dapat dilihat pada gambar, pada gambar ini, nah untuk membuat es rumput laut kita memerlukan beberapa
bahan seperti

* cincau
* rumput laut dan lainya
kemudian hasil akhirnya akan menghasilkan `1 porsi` es rumput laut

bisa kita lihat bahwa es ini mempunyai banyak bahan

* cintau
* rumput laut 
* roti
* kolang kaling

dan lainya kemudian semua bahan itu diproses lalu menghasilkan `1 porsi` es rumput laut

bayangkan semua bahan itu adalah `parameter fungsi yang dibutuhkan` kemudian ada `mangkuk` dan `pengaduk` adalah logika/cara olah gimana kita proses
semua bahan (*parameter*) tersebut sehingga menghasilkan `1 porsi`  es rumput laut tersebut

contoh pembuatan fungsi

```dart
double segitiga(int a, int b) {
  return 0.5 * a * b;
}

void main(List<String> arguments) {
  // panggil fungsi
  double luas = segitiga(5, 10);

  // cetak fungsi
  print('hasil perhitunganya adalah: ' + luas.toString());
}
```

hasilnya adalah melakukan perhitungan luas segitiga, hasilnya

```shell script
hasil perhitunganya adalah: 25.0
```

penjelasan



* `double` adalah tipe data kembalian dari fungsi
* `segitiga` adalah nama fungsi
* `int a` dan `int b` adalah parameternya (*wajib*)

#### contoh fungsi `void`

fungsi bertipe `void` adalah fungsi yang tidak mengembalikan sesuatu

```dart
void cetak_nama() {
  print('halo nama saya adalah feri, salam kenal :)');
}
main(List<String> args) {
  cetak_nama();
}
```

hasilnya

```shell script
halo nama saya adalah feri, salam kenal :)
```
### Bentuk Pemanggilan Fungsi

ada beberapa bentuk pemanggilan fungsi contoh

```dart

double segitiga(int a, int b) {
  return 0.5 * a * b;
}

void main(List<String> arguments) {

  // cetak fungsi
  print("hasil perhitungan " + segitiga(5, 10).toString());
}
```

hasilnya sama

```shell script
hasil perhitungan 25.0
```

### Optional - Named Parameter

`optional parameter` adalah parameter yang tidak wajib di isi,
kita bisa meggunakan tanda `{}` untuk membuat `optional named parameter`

```dart
void bilang_halo({nama, ucapan, teman}) {
  print('$nama bilang ke $teman salam kenal si $teman bilang $ucapan');
}

main(List<String> args) {
  bilang_halo(nama: 'feri', ucapan: 'saya berasal dari jepara', teman: 'budi');
}
```

output

```shell script
feri bilang ke budi salam kenal si budi bilang saya berasal dari jepara
```

> Note: keunggulan `optional named parameter` ini tidak harus urut karena sudah di devinisikan dengan nama

contoh lainya

```dart
String pesan(String from, String message, {String? to, String? appName}) {
  return from +
      ' mengirim ' + message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

main(List<String> args) {
  print(pesan('feri', 'halo'));
}
```

hasilnya jika mengisi parameter wajib saja

```shell script
feri mengirim halo

Process finished with exit code 0
```

jika mengisi parameter `to` seperti ini

```shell script
print(pesan('feri', 'halo', to: 'budi'));
```

hasilnya 


```shell script
feri mengirim halo to budi
```

jika mengisi semua parameter seperti ini

```shell script
print(pesan('feri', 'halo', to: 'budi', appName: 'telegram'));
```
hasilnya

```shell script
feri mengirim halo to budi via telegram
```

> Note: keungulanya kita tidak harus isi secara urut dan opsional aja bisa yang mana aja duluan

contoh *isi parameter acak*

```dart
String pesan(String from, String message, {String? to, String? appName}) {
  return from +
      ' mengirim ' + message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

main(List<String> args) {
  print(pesan('feri', 'halo', appName: 'whatsapp'));
}
```

output

```shell script
feri mengirim halo via whatsapp
``` 

### Optional - Positional Parameter

adalah fungsi dengan `optional parameter` yang urut berdasarkan posisi
kalo membuat `optional positional parameter` kita menggunakan `[]` (*kurung siku*)

```dart
String pesan(String from, String message, [String? to, String? appName]) {
  return from +
      ' mengirim ' + message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

main(List<String> args) {
  print(pesan('feri', 'halo', 'budi', 'telegram'));
}
```

> Note: jika menggunakan `positional parameter` harus mengisi secara berurutan
> contoh `print(pesan('feri', 'halo', 'budi', 'telegram'));` namun didak wajib diisi semuanya
> boleh tidak diisi asalkan `urutanya tetap`

contoh 

```dart
String pesan(String from, String message, [String? to, String? appName]) {
  return from +
      ' mengirim ' + message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

main(List<String> args) {
  print(pesan('feri', 'halo', 'budi'));
}
```

hasilnya 

```shell script
feri mengirim halo to budi
```

### Defeult Parameter value

adalah parameter fungsi yang memiliki nilai awal (`default`) jadi jika gak diisi maka nilai parameternya
akan diisi oleh nilai awal tadi

embuat nilai `default parameter` bisa menggunakan tanda `=` 

contoh

```dart
String pesan(String from, String message, {String? to, String? appName = 'telegram'}) {
  return from +
      ' mengirim ' + message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

main(List<String> args) {
  print(pesan('feri', 'halo'));
}
```

bisa kita lihat di `appName = 'telegram'` jadi kita gak perlu ngisi
cukup panggil dengan `print(pesan('feri', 'halo'));`

outputnya
 
 ```shell script
feri mengirim halo via telegram
```

### Arrow Syntax (`=>`) atau Lambda Expression

`Lambda` biasa digunakan untuk menyingkat fungsi yang mengembalikan nilai, jadi satu baris aja

> Note: hanya boleh berupa `expression` yang memiliki nilai

contohnya seperti ini

```dart
double segitiga(int a, int b) => 0.5 * a * b;


void main(List<String> arguments) {

  // cetak fungsi
  print("hasil perhitungan " + segitiga(5, 10).toString());
}
```

hasilnya sama aja

```shell script
hasil perhitungan 25.0
```

### Fungsi adalah First Class Object

lebih lanjut lagi tentang fungsi

* fungsi dapat disimpan di variabel
* fungsi dapat dimasukan sebagai paramater
* fungsi dapat dijadikan nilai kembalian/`return`

contoh

```dart
double segitiga(int a, int b) => 0.5 * a * b;

void main(List<String> arguments) {
  // cetak fungsi
  Function tiga = segitiga;
  print("hasil perhitungan " + tiga(5, 10).toString());
}
```

### Anonymous Function

adalah fungsi yang ga memiliki nama, contoh penggunaan

```dart
int matematika(int num1, int num2, Function counting) => counting(num1, num2);

void main(List<String> arguments) {
  // cetak fungsi
  print("hasil perhitungan " +
      matematika(10, 20, (int num1, int num2) => num1 + num2).toString());
}
```

atau lebih spesifik lagi

```dart
int matematika(int num1, int num2, Function(int, int) counting) => counting(num1, num2);

void main(List<String> arguments) {
  // cetak fungsi
  print("hasil perhitungan " +
      matematika(10, 20, (int num1, int num2) => num1 + num2).toString());
}

```

hasilnya 

```shell script
hasil perhitungan 30
```

### Referensi dan Resource

* [Dokumentasi](https://dart.dev/guides/language/language-tour#functions)

---

 [Perulangan](../perulangan/README.md) <> [List dan Mapping]()