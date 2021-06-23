import 'package:underscore_parameter/underscore_parameter.dart';

void main(List<String> arguments) {
  var person = Person('feri', doHobby: (_) {
    print('learn code everyday');
  });

// panggil method
  person.takeARest();
}
