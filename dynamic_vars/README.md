## Type Data `Var` dan `dynamic`

membahas lebih detil tentang tipe data `var` dan `dynamic`

### Type Data `dynamic`

adalah tipe data yang dapat dipasan dengan tipe apapun

contoh kita membpunyai sebuah variable bertipe `dynamic` dalam variabel ini kita dapat menunjuk tipe data apapun

```dart
void main() {
    dynamic myDynamic = 10;
    print(myDynamic);
}
```

maka hasilnya akan 

```
10
```

jika kita ubah seperti ini

```dart
void main() {
    dynamic myDynamic = 10;
    myDynamic = 'ini string';
    print(myDynamic);
}

```

maka hasilnya akan berubah atau merujuk pada object baru

```
ini string
```

> Note: `dynamic` ini tipe data yang dapat berubah sesui nilai/tipe yang di tunjuk oleh `dynamic` itu sendiri

contoh lagi

```dart
void main() {
    dynamic myDynamic;
    myDynamic = 10;

    // kita bisa ganti nilai assign dulu menggunakan `as`
    print((myDynamic as Manusia).name);
}

class Manusia {
    String name = 'feri lukman';

}
```

maka hasilnya

```
feri lukman
```

contoh lain

```dart
void main() {
    dynamic myDynamic;
    myDynamic = 10;

   myDynamic = Manusia();

   // cetak nilai
   print(myDynamic.name);
}

class Manusia {
    String name = 'feri lukman';

}
```

hasilnya

```
feri lukman
```

### Tipe Data `var`

tipe data `var` adalah tipe data yang memungkinkan variable untuk menunjuk object apapun tapi hanya sekali sejak dideklarasikan

contoh

```dart
void main () {
    var datas = 'feri lukmansyah';

    print(datas.runtimeType);

}
```

maka hasilnya akan jadi


```
String
```

dimana dengan tipe `var` ini jika kita deklarasikan diawal adalah string maka object yang selanjutnya adalah string


```dart
void main () {
    var datas = 'feri lukmansyah';

    datas = 'budi';
    print(datas);
}
```

hasilnya

```
budi
```

jika kita deklarasi nilainya di belakanng maka tipe `var` ini otomatis berubah jadi `dynamic`

contoh

```dart
void main () {
    var identitas;
    identitas = 'feri';
    identitas = 20;
    print(identitas);
}
```

maka hasilnya

```
20
```

### Kapan kita Harus pake `var` atau `dynamic`

kalo kita variable bisa diisi tipe data apapun misal untuk keperluan parsing `json`
maka kita pake `dynamic`
kalo pake `var` kalo awalnya kita tidak tau jenis tipe data

---

[Future Or](../furure_or/README.md) <> [materi Selesai]()