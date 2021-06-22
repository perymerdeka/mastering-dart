### List, Set dan Mapping

---

### List
adalah kumpulan `array object` jika dalam bahasa pemrograman lain disebut `array` klo di dart disebut
`List`

#### contoh penggunaan

contoh penggunaan list

```dart
main(List<String> args) {
  List <int> dataList = [];

  List <int> numbers = [1, 2, 3, 4];
  
  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20,30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // hasil akhir
  print(dataList);
}
```

contoh outputnya

```shell script
list ke 0 adalah
1
[50, 1, 2, 3, 4, 20, 10, 20, 30]
```

### Penerapan menggunakan Looping

ada beberapa penerapan perulangan pada list
* `for`
* `for in`
* `for Each`

#### `for`

penerapanya seperti ini

```dart
// looping for pada list
  for ( int index = 0; index < dataList.length; index++) {
    print(dataList[index]);
  }
```

lengkapnya

```dart
main(List<String> args) {
  List <int> dataList = [];

  List <int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20,30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // looping for pada list
  for (int index =0; index < dataList.length; index++) {
    print(dataList[index]);
  }

}
```

output

```shell script
1
50
1
2
3
4
20
10
20
30
```

#### `for in`

penerapanya seperti ini

```dart
// looping for pada list
  for (int index in dataList) {
    print(index);
  }
```

lengkapnya


```dart
main(List<String> args) {
  List <int> dataList = [];

  List <int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20,30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // looping for pada list
  for (int index in dataList) {
    print(index);
  }

}
```
```shell script
1
50
1
2
3
4
20
10
20
30
```

#### `for each`

contoh penerapan `forEach` seperti ini

```dart
 // looping for pada list
  dataList.forEach((element) {
    print(element);
  });
```

lengkapnya

```dart
main(List<String> args) {
  List <int> dataList = [];

  List <int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20,30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // looping for pada list
  dataList.forEach((element) {
    print(element);
  });

}
```

outputnya sama
baik itu
* `for`
* `for in`
* `forEach`

```shell script
list ke 0 adalah
1
50
1
2
3
4
20
10
20
30
```

### Penggunaan Lanjutan Pada List

seperti

```dart
dataList.remove(10); // hapus nilai
dataList.removeAt(0); // hapus berdasarkan index
dataList.removeLast(); // hapus item terakhir
 dataList.removeRange(0, 4); // remove berdasarkan index
```

lengkapnya

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  dataList.remove(10); // hapus nilai
  dataList.removeAt(0); // hapus berdasarkan index
  dataList.removeLast(); // hapus item terakhir
  dataList.removeRange(0, 4); // remove berdasarkan index
}
```

outputnya

```shell script
list ke 0 adalah
1
```

> Note:  perhitungan index dimulai dari angka `0` dan untuk end dimulai dari sebelum angka tersebut
> misal `dataList.removeRange(0, 4)` 
> berati perhitungan dimulai dari `0` dan dakhiri dengan angka sebelum `4`

#### Filtering Remove Pada Dart

kita adpat melakukan `filtering` dahulu sebelum remove item pada dart menggunakan
`removeWhere();` dimana kita menjalankan suatu fungsi dulu sebelum menghapus sebuah item

contoh

```dart
// contoh filtering
dataList.removeWhere((element) => element % 2 !=0);
print("Bilangan Ganjil");
print(dataList);
```
contoh lengkap

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 !=0);
  print("Bilangan Ganjil");
  print(dataList);

}
```

outputntya seperti ini

```shell script
Bilangan Ganjil
[50, 2, 4, 20, 10, 20, 30]
```

#### Cek Item Tertentu dalam `List` dart

untuk cek item kita bisa pake `contains`

```dart
// cek jika item tertentu ada dalam list atau tidak
  if (dataList.contains(30)) {
    print('item ditemukan');

  } else {
    print('ga nemu');
  }
```

contoh lengkapnya kaya gini

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 !=0);

  // cek jika item tertentu ada dalam list atau tidak
  if (dataList.contains(30)) {
    print('item ditemukan');

  } else {
    print('ga nemu');
  }

}
```

output

```shell script
item ditemukan
``` 

#### Ambil Sebagian dari List

untuk operasi tersebut kita bisa pake `sublist` seperti ini

```dart
// ambil data list tertentu
List databaru = dataList.sublist(2, 5); // ambil data dari index ke 2 sampai sebelum 5
print(databaru);
```

lengkapnya 

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 !=0);

  // ambil data list tertentu
  List databaru = dataList.sublist(2, 5); // ambil data dari index ke 2 sampai sebelum 5
  print(databaru);

}
```

hasilnya

```shell script
[4, 20, 10]
```

> Note: untuk `sublist` end parameternya optional jadi ga diisi gak apa

#### Hapus Semua List

kita bisa pake `dataList.clear();`

> Note `dataList` adalah nama listnya

#### Sorting item Pada List

kita bisa melakukan sorting pada list menggunakan `sort()`

#### Default Sort

adalah sorting list dengan standar dart

```dart
// default sorting
  dataList.sort();

  // akses item
  dataList.forEach((element) {
    print(element);
  });
```

lengkapnya

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 != 0);

  // default sorting
  dataList.sort();

  // akses item
  dataList.forEach((element) {
    print(element);
  });
}

```

output

```shell script
1
2
4
10
20
20
30
50
```

#### sorting Manual

kita bisa menentukan sorting kita sendiri menggunakan `sort()` dengan mengisi parameter fungsi dalam `sort()`

**Studi kasus**

kita buat fungsi degan 2 parameter katakanlah `a` dan `b` jika return dari fungsi tersebut
jika si `a` hasilnya negatif maka `a` berada diurutan paling depan jika si `a` hasilnya negatif maka
si `b` yang berada di urutan paling depan

contoh

```dart
 // manual sort
  dataList.sort((a, b) => b - a);

  // akses item
  dataList.forEach((element) {
    print(element);
  });
```


lengkapnya

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 != 0);

  // manual sort
  dataList.sort((a, b) => b - a);

  // akses item
  dataList.forEach((element) {
    print(element);
  });
}

```

hasilnya bakal menurun

```shell script
1
2
4
10
20
20
30
50
```

#### Cek Bilangan pada List

kita bisa mengecek suatu list apakah iterator dalam kondisi tertentu, bernilai `true` atau `false` kita bisa pake
`every()`

contoh studi kasus menenukan bilangan ganjil

```dart
// contoh filtering
  dataList.removeWhere((element) => element % 2 == 0);

  // cek dengan every
  if (dataList.every((element) => element % 2 != 0)) {
    print('semua ganjil');
  } else {
    print('ada yang genap');
  }

  // akses item
  dataList.forEach((element) {
    print(element);
  });
```

kode lengkapnya

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 == 0);

  // cek dengan every
  if (dataList.every((element) => element % 2 != 0)) {
    print('semua ganjil');
  } else {
    print('ada yang genap');
  }

  // akses item
  dataList.forEach((element) {
    print(element);
  });
}
```

contoh output

```shell script
list ke 0 adalah
1
semua ganjil
1
3
```


#### Cek List Kosong

untuk cek list kosong atau tidak, bisa pake
* `isEmpty()` untuk cek apakah list kosong `->` `boolean`
* `isNotEmpty()` untuk cek apakah list tidak kosong `->` `boolean`

[cek dokumentasi](https://dart.dev/guides/language/language-tour#lists)

### Set

kumpulan tipe data `array` yang unix dan tidak ada duplikatnya, kita bisa menggunakan tanda`{}`
untuk membuat `Set`


```dart
main(List<String> args) {
  Set <String> halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
}
```

### konversi List ke Set

kita bisa menggunakan `toSet();`

```dart
 // convert list ke set
  Set converts = dataList.toSet();

  // akses item
  converts.forEach((element) {
    print(element);
  });
```

contoh lengkap

```dart
main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 != 0);

  // convert list ke set
  Set converts = dataList.toSet();

  // akses item
  converts.forEach((element) {
    print(element);
  });
}

```

hasilnya

```shell script
1
50
2
4
20
10
30
```

### Mapping

mapping adalah cara untuk mengubah data tertentu menjadi bentuk lain yang mempunyai `key` dan `value`
jadi bentuk datanya akan menjadi seperti ini

```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
```

ada beberapa cara kita bisa Mapping Manual menggunakan Looping

```dart
main(List<String> args) {
  List<String> dataList = [];
  List<int> number = [10, 20, 30, 60];

  // looping
  number.forEach((element) {
    dataList.add('angka ke ' + element.toString());
  });

  // cetak list
  dataList.forEach((newElement) {
    print(newElement);
  });
}
```

#### Cara Praktis

ada cara praktisnya kita bisa pake `map()`

contoh

```dart
main(List<String> args) {
  List<String> dataList = [];
  List<int> number = [10, 20, 30, 60];

  // looping
  number.map((e) => ' angka ' + e.toString());

  // cetak list
  dataList.forEach((newElement) {
    print(newElement);
  });
}
```

outputnya sama aja

```shell script
angka ke 10
angka ke 20
angka ke 30
angka ke 60
```

---

[fungsi dan Parameter](../fungsi/README.md) <> [Class dan Object]()