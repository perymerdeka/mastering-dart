import 'package:generic/secure_box.dart';

void main(List<String> arguments) {
  var box = SecureBox<String>('test data', '123');

  // get data
  print(box.getDate('123').toString());
}
