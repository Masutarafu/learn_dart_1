import 'dart:html_common';
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
// Exercise 1
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

// void main() {
//   stdout.write('What city are you presently? ');

//   String? userInput = stdin.readLineSync();

//   final weatherCheck = getWeather(userInput ?? 'Condition: Unknown');
//   print(
//     '${weatherCheck.$1 ?? "Condition Unknown"}, ${weatherCheck.$2 ?? "Temperature: 0.0"}',
//   );
// }

// (String?, double?) getWeather(String cityName) {
//   if (cityName == 'London') {
//     return ('Rainy', 15.0);
//   } else if (cityName == 'Dubai') {
//     return ('Sunny', 42.0);
//   } else {
//     return (null, null);
//   }
// }

// Day 4: Exercise 2
// Done
// The Task: The "Digital Vault"
// Imagine you are writing the logic for a secure vault. To get in, a user needs a username and a pin.

// 1. The Function: openVault
// Create a function called openVault that takes two parameters: String username and int pin.

// The Return Type: It must return a Record containing:
// A String? (The secret message inside the vault).
// A String? (An error message if the login fails).

// The Logic:
// If the username is "admin" and the pin is 9999, return ('The gold is under the floorboards', null).
// If the username is "admin" but the pin is wrong, return (null, 'INCORRECT PIN').
// If the username is anything else, return (null, 'USER NOT RECOGNIZED').

// 2. The Implementation: main()
// Ask the user for their name and then for their PIN. (Note: stdin.readLineSync() returns a String?.
//You’ll need to convert the PIN to an int using int.tryParse()).

// The Challenge: Call openVault.

// The Safety Check:
// Use Pattern Destructuring to get the values (e.g., final (secret, error) = ...).
// Print the secret message. If it’s null, print "Access Denied".
// Print the error message. If it’s null, print "System healthy".

// void main() {
//   stdout.write('Please input username? ');
//   String nameput = stdin.readLineSync() ?? '';

//   stdout.write('Please input four-digit pin? ');
//   String pinput = stdin.readLineSync() ?? '';

//   int pincheck = int.tryParse(pinput) ?? 0;

//   final (secret, error) = openVault(nameput, pincheck);

//   print(secret ?? 'Access Denied');
//   print(error ?? 'System healthy');
// }

// (String?, String?) openVault(String username, int pin) {
//   if (username == "admin" && pin == 9999) {
//     return ('The gold is under the floorboards', null);
//   } else if (username == "admin" && pin != 9999) {
//     return (null, 'INCORRECT PIN');
//   } else {
//     return (null, 'USER NOT RECOGNIZED');
//   }
// }

// Day 5: Collections (Lists, Sets & Maps)

// Examples

// MAP MAP MAP
// MAP MAP MAP
// void main() {
//   Map<String, String> phonebook = {'Alice': '555-1234', 'Bob': '555-5678'};

//   // Accessing a key that exists:
//   print(phonebook['Alice']); // Output: 555-1234

//   // Accessing a key that DOES NOT exist:
//   // This returns NULL. This is where your Day 2 skills come in.
//   String? unknown = phonebook['Charlie'];
//   print(unknown ?? 'Number not found');

//   // FOR-IN LOOP FOR-IN LOOP FOR-IN LOOP
//   List<String> colors = ['Red', 'Green', 'Blue'];

//   for (String color in colors) {
//     print('The color is $color');
//   }
// }

// Day 6: Understanding Collections (Lists, Sets & Maps)
// void main() {
//   // MAP MAP MAP
//   // MAP MAP MAP
//   Map<String, int> inventory = {'Apples': 176, 'Oranges': 214, 'Bananas': 10};

//   Map<String, String> phonebook = {'Alice': '555-1234', 'Bob': '555-5678'};

//   // Accessing a key that exists:
//   print(phonebook['Alice']); // Output: 555-1234
//   print(inventory['Banana']);

//   // Accessing a key that DOES NOT exist:
//   // This returns NULL. This is where your Day 2 skills come in.
//   String? unknown = phonebook['Charlie'];
//   print(unknown ?? 'Number not found');
// }

void main() {
  // FOR-IN LOOP(LIST) FOR-IN LOOP(LIST) FOR-IN LOOP(LIST)
  List<String> colors = ['Red', 'Green', 'Blue'];

  for (String color in colors) {
    print('The color is $color');
  }

  print('---');

  List<String> newColors = ['Cyan', 'Magenta', ...colors, 'Yellow', 'Black'];

  for (String color in newColors) {
    print('The color is $color');
  }
}
