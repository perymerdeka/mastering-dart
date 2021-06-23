import 'package:async_await/async_await.dart';

void main(List<String> arguments) async {
  var p = Person();
  print('job 1');
  print('job 2');
  p.getDataAsync().then((_) => {print('job3: ' + p.name)});
  print('job4');
}
