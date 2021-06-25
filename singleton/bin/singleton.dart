import 'services.dart';

void main(List<String> arguments) {
  ServiceSingleton service1 = ServiceSingleton();
  ServiceSingleton service2 = ServiceSingleton();

  // check object
  if (service1 == service2) {
    print('sama');
  } else {
    print('sama');
  }
}
