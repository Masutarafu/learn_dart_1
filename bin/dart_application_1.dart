import 'dart:io';

// Day 1: The type system & Immutability
// void main() {
//   const double pi = 3.14159265359;

//   stdout.write('Enter the radius: ');
//   String? input = stdin.readLineSync();

//   if (input == null || double.tryParse(input) == null) {
//     print('Error: You must enter a valid number.');
//     return;
//   }

//   final double radius = double.parse(input);

//   final double area = pi * (radius * radius);

//   print('The area is: $area');

//   // CRITICAL FAILURE POINT:
//   // pi = 4.0; // Uncommenting this will cause a Compilation Error.
// }

// Day 2: Null safety and Records
void main() {
  // Call 1: A successful "fetch"
  final user1 = fetchUser(1);
  print('Request 1 - Status: ${user1.$2}');
  // Using ?? to provide a fallback for the nullable name
  print('User Name: ${user1.$1 ?? "Error: User not found."}');

  print('---');

  // Call 2: A "fetch" that fails
  final user2 = fetchUser(99);
  print('Request 2 - Status: ${user2.$2}');
  // This will trigger the fallback because user2.$1 is null
  print('User Name: ${user2.$1 ?? "Error: User not found."}');
}

// The function returns a "Tray" (Record)
// (String?, int) means: A box that might be empty, and a number that won't be.
(String?, int) fetchUser(int id) {
  if (id == 1) {
    return ('Blakk', 200); // Success
  } else {
    return (null, 404); // Failure
  }
}
