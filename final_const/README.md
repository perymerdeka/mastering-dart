### Reference, Pointer dan identifier

ketika kita mendeklarasikan sebuah variabel, sebenarnya variable bukan bersifat sebagai penampung nilai
tapi merujuk pada alamat object yang dimaksud, contoh

```dart
List dataList = [];
```

disini kita akan membuat object yang bertipw `List` lalu alamat di memori disimpan ke variabel `dataList`

### Konsep Penting

misal kita punya beberapa object seperti ini

```dart
Tree first = Tree(num: 1);
```
```dart
Tree seconds = Tree(num: 1);
```

jika kita bandingkan maka tidak akan sama karena `seconds` akan membentuk object baru, klo kita coba samakan maka hasilnya
`not identical` beda cerita kalo yang ini

```dart
Tree third = first();
```

maka object `first` akan di copy ke kedalam `third` maka `first` dan `third` merujuk pada object yang sama (`identical`)

### `Final` Keywords

`Final` keyword digunakann untuk point object seterusnya selama aplikasi jalan, dan untuk menggunakan keyword
`Final` ini harus di inisialisasi langsung atau bisa lewat `constructor` dan dapat di deklarasikan dimanapun

```dart
void main(List<String> arguments) {
  final int x = 10;
}
```

tau dalam class kaya gini

```dart
class Regular {
  final int? number;
  Regular({this.number});
}
```

### `const` atau Konstanta

dibagi jadi 2 jenis

* Literal const: yaitu nilai yang langsung kita tulis  contoh `double x = 2.5`
* Symbolic Const: itu konstanta yang diberikan simbol contoh `const x = 2.5`

> Note: perbedaanya dengan `final` adalah kalo `final` itu merujuk pada object kalo `const`
> itu nilainya di asosiasi ke object yang sama

`const` hanya dapat di deklarasikan sebagai variable lokal/static

contoh lain

```dart
Tree first = const Tree(num: 1);
```
```dart
Tree seconds = const Tree(num: 1);
```
karena indentifikasinya berdasarkan nilai dia jadi merujuk ke object yang sama

contoh

```dart
class ConstClass {
  final int? number;
  const ConstClass({this.number});
}
```

dimain kita panggil seperti ini

```dart
void main(List<String> arguments) {
  // final int x = 10;
  var a = const ConstClass(number: 5);
  var b = const ConstClass(number: 5);

//  cek indentitas
  print(identical(a, b));
}
```

ketika kita cetak hasilnya 

```
true
```

### Keuntungan Pake `Const` atau konstanta

* kita ga bakal buat object berulang-ulang
* dibuatnya waktu pas compile
* konstata hanya bisa di dekarasikan di `top level` `local` atau `static field

---
[Async Await](../async_await/README.md) <>  [Generic dan Generic Type Dart]()`
