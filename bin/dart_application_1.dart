// import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

// void main() {
//   print('Hello world');
// }

import 'dart:io';

void main() {
  // const must be known at compile time.
  // We know PI, so it's a const.
  const double pi = 3.14159265359;

  stdout.write('Enter the radius: ');
  String? input = stdin.readLineSync();

  if (input == null || double.tryParse(input) == null) {
    print('Error: You must enter a valid number.');
    return;
  }

  // final is used because we don't know the radius until the user types it.
  // It is immutable once set, but it is a RUNTIME constant.
  final double radius = double.parse(input);

  final double area = pi * (radius * radius);

  print('The area is: $area');

  // CRITICAL FAILURE POINT:
  // pi = 4.0; // Uncommenting this will cause a Compilation Error.
}
