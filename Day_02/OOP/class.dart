/*
1. In object-oriented programming, a class is a blueprint for creating objects. 
2. A class defines the properties and methods that an object will have.
3. You can declare a class in dart using the class keyword followed by class name and braces {}
4. It’s a good habit to write class name in PascalCase. For example: QuizBrain, etc.
.......................................................................................
In the above syntax:

1. The class keyword is used for defining the class.
2. ClassName is the name of the class and must start with capital letter.
3. Body of the class consists of properties and functions.
4. Properties are used to store the data. It is also known as fields or attributes.
5. Functions are used to perform the operations. It is also known as methods.
............................................................................................
Key Points
1. The class is declared using the class keyword.
2. The class is a blueprint for creating objects.
3. The class body consists of properties and methods.
4. The properties are also known as fields, attributes, or data members.
5. The methods are also known as behaviors, or member functions.
*/

class ClassName {
// properties or fields
// methods or functions
}

//Declaring A Class In Dart

class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}

