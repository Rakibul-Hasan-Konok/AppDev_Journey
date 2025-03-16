/*
Advantages Of Enum In Dart
1. It is used to define a set of named constants.
2. Makes your code more readable and maintainable.
3. It makes the code more reusable and makes it easier for developers.
........................................................................
Characteristics Of Enum
1. It must contain at least one constant value.
2. Enums are declared outside the class.
3. Used to store a large number of constant values.
..............................................................
*/


enum days {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday
}

void main() {
  var today = days.Friday;
  switch (today) {
    case days.Sunday:
      print("Today is Sunday.");
      break;
    case days.Monday:
      print("Today is Monday.");
      break;
    case days.Tuesday:
      print("Today is Tuesday.");
      break;
    case days.Wednesday:
      print("Today is Wednesday.");
      break;
    case days.Thursday:
      print("Today is Thursday.");
      break;
    case days.Friday:
      print("Today is Friday.");
      break;
    case days.Saturday:
      print("Today is Saturday.");
      break;
  }
}