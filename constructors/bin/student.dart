import 'person.dart';

class Student extends Person {
  Student({String studentName = 'student baru'}) : super(name: studentName){
    print('Student Constructor');
  }
}