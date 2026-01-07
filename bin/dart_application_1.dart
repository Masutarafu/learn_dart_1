import 'dart:io';

void main() {
  const double pi = 3.14159265359;

  stdout.write('Enter the radius: ');
  String? input = stdin.readLineSync();

  if (input == null || double.tryParse(input) == null) {
    print('Error: You must enter a valid number.');
    return;
  }

  final double radius = double.parse(input);

  final double area = pi * (radius * radius);

  print('The area is: $area');

  // CRITICAL FAILURE POINT:
  // pi = 4.0; // Uncommenting this will cause a Compilation Error.
}
