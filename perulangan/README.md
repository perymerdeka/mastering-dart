### Perulangan dan Unary Operator

chapter 3

---

perulangan digunakan ketika kita membuat program, tentu kita mempunyai suatu perintah yang diulang beberapa kali

### Perulangan Dalam Dart

dalam bahasa pemrograman dart terdapat beberapa cara melakukan perulangan, caranya mirip seperti melakukan perulanga menggunakan
`C` `C#` dan bahasa pemrograman mirip `C` Lainya

berikut adalah bebercara cara melakukan perulangan

* **`For`**
* **`while`**
* **`do while`**

#### Perulanan For

pembuatannya sama seperti perulangan dalam `C` contoh

```dart
void main(List<String> arguments) {
  for (int counter = 0; counter < 5; counter = counter + 1) {
    print('berulangan ke ' + counter.toString());
  }

}
```
contoh output

```shell script
berulangan ke 0
berulangan ke 1
berulangan ke 2
berulangan ke 3
berulangan ke 4

Process finished with exit code 0

```

contoh lain

```dart
void main(List<String> arguments) {
  for (int data = 5; data >= 1; data = data -1) {
    print('perulangan mundur dari ' + data.toString());
  }

}
```

hasil

```shell script
perulangan mundur dari 5
perulangan mundur dari 4
perulangan mundur dari 3
perulangan mundur dari 2
perulangan mundur dari 1
```

> note: Perhitungan Perulangan ini dimulai dari `0` sama seperti menghitung index 

#### Penyingkatan For

setelah mengetahui benduk dasar kita dapat menyingkatnya seperti ini

* `counter = counter + 1` maka jadi `counter +=1`
* `data = data -1 ` maka jadi `data -= 1`

### Perulangan while

perulangan `while` yaitu perulangan yang dieksekusi selama kodisinya `true` contoh

```dart
main(List<String> args) {
  int number = 0;
  while (number < 5) {
    print('ulang sebanyak ' + number.toString());
    number += 1;
  }
}
```

contoh output

```shell script
ulang sebanyak 0
ulang sebanyak 1
ulang sebanyak 2
ulang sebanyak 3
ulang sebanyak 4

Process finished with exit code 0
```

### Perulangan do while

perulangan `do while` mirip seperti `while` hanya saja perulangan ini mengevaluasi kondisi setelah perulangan

contoh

```dart
main(List<String> args) {
  int number = 0;
  do {
    print('perulangkan ke ' + number.toString());
    number += 1;
  } while (number < 5);
}
```

outputnya seperti ini

```shell script
perulangkan ke 0
perulangkan ke 1
perulangkan ke 2
perulangkan ke 3
perulangkan ke 4

Process finished with exit code 0
```

#### perbedaan `while` dan `do while`

jika `do while` maka akan di eksekusi dulu baru di cek kalo `while` dia melakukan cek dulu
jika kondisinya `true` maka baru dieksekusi

> Note: Kalo `do while` jika pegecekan `false` si `do` akan tetap dieksekusi minimal `1x`

contoh

```dart
main(List<String> args) {
  int number = 6;
  do {
    print('perulangkan ke ' + number.toString());
    number += 1;
  } while (number < 5);
}
```

dia akan cetak `1x`

```shell script
perulangkan ke 6

Process finished with exit code 0
```

### Unary Operator

* `++` (*increment*)
* `--` (*decrement*)

operator ini biasa diterapkan di perulangan contoh penerapanya bisa menyingkat `+= 1` atau `-= 1` contohnya

```dart
main(List<String> args) {
  int number = 0;
  while (number < 5) {
    print('ulang sebanyak ' + number.toString());
     number ++;
  }
}
```

outputnya tetep sama

```shell script
ulang sebanyak 0
ulang sebanyak 1
ulang sebanyak 2
ulang sebanyak 3
ulang sebanyak 4

Process finished with exit code 0
```

**Contoh Lain**

```dart
 for (int data = 5; data >= 1; data --) {
    print('perulangan mundur dari ' + data.toString());
  }
```

outputnya sama

```shell script
perulangan mundur dari 5
perulangan mundur dari 4
perulangan mundur dari 3
perulangan mundur dari 2
perulangan mundur dari 1

Process finished with exit code 0
```

### Bentuk Lain Pemakaian

terdapat beberapa cara untuk memakai unary ini contoh

* `a++`
* `++a`
* `b--`
* `--b`

> **Caranya Lihat posisi operator**
> kalo `++` nya didepan `++a` berati ditambah dulu baru dipakai
> kalo `++` nya dibelakang `a++` berati dipakai dulu baru ditambah
> untuk operator `--` sama


contoh penerapan

**a++**

```dart
main(List<String> args) {
  int a, b;

  a = 10;
  b = a++; // hasilnya b = 10 (dipake dulu baru ditambah)
  print('isi dari a adalah' + a.toString());
  print('isi dari b adalah ' + b.toString());
}
```
outputnya

```shell script
isi dari a 11
isi dari b adalah 10

Process finished with exit code 0
```

**++a**


```dart
ain(List<String> args) {
  int a, b;

  a = 10; // berunah jadi 11 karena ditambah
  b = ++a; // hasilnya b = 11 (ditambah dulu baru dipake)
  print('isi dari a adalah ' + a.toString());
  print('isi dari b adalah ' + b.toString());
}
```

output

```shell script
isi dari a adalah 11
isi dari b adalah 11

Process finished with exit code 0
```

---

[Percabangan](../percabangan/README.md)  <> [Fungsi, parameter Lambda Expression](../fungsi/README.md)
