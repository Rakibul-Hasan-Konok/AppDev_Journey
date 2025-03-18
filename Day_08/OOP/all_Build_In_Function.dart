// ignore_for_file: unused_local_variable

import 'dart:math';
import 'dart:io';

void main(){
// 1. String Functions

String str = "Hello Dart";
str.length;            // Get length of the string
str.isEmpty;           // Check if string is empty
str.isNotEmpty;        // Check if string is not empty
str.toLowerCase();     // Convert to lowercase
str.toUpperCase();     // Convert to uppercase
str.trim();            // Remove leading and trailing spaces
str.trimLeft();        // Remove leading spaces
str.trimRight();       // Remove trailing spaces
str.contains("Dart");  // Check if substring exists
str.startsWith("Hello"); // Check prefix
str.endsWith("Dart");  // Check suffix
str.indexOf("Dart");   // Find index of substring
str.lastIndexOf("l");  // Find last occurrence of character
str.replaceAll("Hello", "Hi"); // Replace all occurrences
str.split(" ");        // Split string into a list
str.substring(0, 5);   // Extract substring
str.codeUnits;         // Convert string to Unicode codes
//.....................................................................
//2. List Functions

List<int> numbers = [1, 2, 3, 4, 5];
numbers.length;        // Get length of list
numbers.isEmpty;       // Check if list is empty
numbers.isNotEmpty;    // Check if list is not empty
numbers.first;         // Get first element
numbers.last;          // Get last element
numbers.reversed;      // Reverse the list
numbers.add(6);        // Add element
numbers.addAll([7, 8]); // Add multiple elements
numbers.insert(1, 10);  // Insert element at index
numbers.remove(3);      // Remove element by value
numbers.removeAt(2);    // Remove element at index
numbers.clear();        // Clear all elements
numbers.contains(4);    // Check if an element exists
numbers.indexOf(5);     // Get index of element
numbers.sort();         // Sort list
numbers.shuffle();      // Shuffle list
numbers.map((e) => e * 2).toList(); // Transform elements

//.............................................................................
//3. Set Functions

Set<int> mySet = {1, 2, 3, 4, 5};
mySet.add(6);          // Add element
mySet.remove(3);       // Remove element
mySet.contains(4);     // Check if contains element
mySet.clear();         // Clear set

//................................................................................
//4. Map (Dictionary) Functions

Map<String, int> myMap = {"one": 1, "two": 2, "three": 3};
myMap.length;          // Get length
myMap.keys;            // Get all keys
myMap.values;          // Get all values
myMap.containsKey("one"); // Check if key exists
myMap.containsValue(2); // Check if value exists
myMap["four"] = 4;     // Add key-value pair
myMap.remove("two");   // Remove key
myMap.clear();         // Clear all elements

//.............................................................................
//5. Math Functions
//import 'dart:math';


max(10, 20);           // Get maximum of two numbers
min(10, 20);           // Get minimum of two numbers
sqrt(16);              // Square root
pow(2, 3);             // Power (2^3)
log(10);               // Natural logarithm
sin(pi / 2);           // Sine function
cos(0);                // Cosine function
tan(pi / 4);           // Tangent function
//..................................................................................
//6. DateTime Functions

DateTime now = DateTime.now();    // Get current date and time
DateTime specificDate = DateTime(2025, 3, 18, 12, 30); // Create specific date
now.year;          // Get year
now.month;         // Get month
now.day;           // Get day
now.hour;          // Get hour
now.minute;        // Get minute
now.second;        // Get second
now.add(Duration(days: 5));  // Add days
now.subtract(Duration(days: 3)); // Subtract days
now.difference(specificDate); // Get difference

//......................................................................................
//7. Type Conversion Functions

// String to int
int.parse("123"); 

// String to double
double.parse("12.34");

// Int to String
123.toString(); 

// Double to String
12.34.toString();

// Int to Double
123.toDouble();

// Double to Int
12.99.toInt();

//.................................................................
//8. File and I/O Functions

// import 'dart:io';

// Read input from console
String? input = stdin.readLineSync();

// Print output
print("Hello, Dart!");

// Write to a file
File('example.txt').writeAsStringSync('Hello, Dart!');

// Read from a file
String content = File('example.txt').readAsStringSync();
print(content);
//............................................................................
//9. Random Number Functions

//import 'dart:math';

Random random = Random();
random.nextInt(100);  // Random integer (0 to 99)
random.nextDouble();  // Random double (0.0 to 1.0)
random.nextBool();    // Random boolean (true or false)

//...............................................................................
//10. Exception Handling

try {
  int x = int.parse("abc"); // Error: invalid number
} catch (e) {
  print("Error: $e");
} finally {
  print("This will always execute.");
}




}