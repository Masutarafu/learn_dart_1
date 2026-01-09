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
// void main() {
//   // Call 1: A successful "fetch"
//   final user1 = fetchUser(1);
//   print('Request 1 - Status: ${user1.$2}');
//   // Using ?? to provide a fallback for the nullable name
//   print('User Name: ${user1.$1 ?? "Error: User not found."}');

//   print('---');

//   // Call 2: A "fetch" that fails
//   final user2 = fetchUser(99);
//   print('Request 2 - Status: ${user2.$2}');
//   // This will trigger the fallback because user2.$1 is null
//   print('User Name: ${user2.$1 ?? "Error: User not found."}');
// }

// // The function returns a "Tray" (Record)
// // (String?, int) means: A box that might be empty, and a number that won't be.
// (String?, int) fetchUser(int id) {
//   if (id == 1) {
//     return ('Blakk', 200); // Success
//   } else {
//     return (null, 404); // Failure
//   }
// }

// Day 3: Exercise on Null Safety and Records
// The Task: Weather Station Simulation
// The Function: Create a function called getWeather that takes a String cityName.
// The Return Type: It must return a Record containing a String? (the condition, like "Sunny") and a double? (the temperature).
// Note: Both are nullable because if the city is unknown, we have neither a condition nor a temperature.
// The Data:
// If the city is "London", return ('Rainy', 15.0).
// If the city is "Dubai", return ('Sunny', 42.0).
// For any other city, return (null, null).
// The Challenge (Main):
// Ask the user for a city name (use stdin.readLineSync()).
// Call your getWeather function.
// The Safety Check: Print the results.
// If the condition is null, print "Condition: Unknown".
// If the temperature is null, print "Temperature: 0.0" (using the ?? operator).

void main() {
  stdout.write('What city are you presently? ');

  String? userInput = stdin.readLineSync();

  final weatherCheck = getWeather(userInput ?? 'Condition: Unknown');
  print(
    '${weatherCheck.$1 ?? "Condition Unknown"}, ${weatherCheck.$2 ?? "Temperature: 0.0"}',
  );
}

(String?, double?) getWeather(String cityName) {
  if (cityName == 'London') {
    return ('Rainy', 15.0);
  } else if (cityName == 'Dubai') {
    return ('Sunny', 42.0);
  } else {
    return (null, null);
  }
}
