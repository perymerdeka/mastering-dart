### Async Await dan Future


### `Future`

`Future` ini biasa digunakan untuk menunjukan sebuah hasil method ga akan langsung ke return

contoh

```dart
// method async
Future<void> getDataAsync() async {
// buat delay
await Future.delayed(Duration(seconds: 3));
```
jadi kita nunggu `Future.delayed` selesai baru dieksekusi method berikutnya karena kita pasang `await`

lalu kita buat `main` nya seperti ini

```dart
import 'package:async_await/async_await.dart';

void main(List<String> arguments) async {
  var p = Person();
  print('job 1');
  print('job 2');
  p.getDataAsync().then((_) => {print('job3: ' + p.name)});
  print('job4');
}
```

kalo kita jalankan hasilnya `job3` akan ditunggu sekama 3 detik karena pake `then`

hasilnya

```
job 1
job 2
job4
get data done
job3: joko // ini akan ditungu 3 detik
```

### Referensi dan Sumber Belajar

* [asynchronous support](https://dart.dev/guides/language/language-tour#asynchrony-support)

---

[static keywords](../static_keywords/README.md) <> []()