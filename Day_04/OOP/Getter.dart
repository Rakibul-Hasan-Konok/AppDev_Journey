/*
Getter is used to get the value of a property. 
It is mostly used to access a private property’s value.
...............................................................
Why Is Getter Important In Dart?
1. To access the value of private property.
2. To restrict the access of data members of a class.

*/

class NoteBook {
  // Private properties
  String? _name;
  double? _prize;

  // Constructor
  NoteBook(this._name, this._prize);

  // Getter method to access private property _name
  String get name => this._name!;

  // Getter method to access private property _prize
  double get price => this._prize!;
}

void main() {
  // Create an object of NoteBook class
  NoteBook nb = new NoteBook("Dell", 500);
  // Display the values of the object
  print(nb.name);
  print(nb.price);
}