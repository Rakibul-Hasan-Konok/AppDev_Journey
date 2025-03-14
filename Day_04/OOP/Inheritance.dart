/*
Parent Class: The class whose properties and methods are inherited by another class is called parent class.
It is also known as base class or super class.

Child Class: The class that inherits the properties and methods of another class is called child class.
It is also known as derived class or sub class.

......................................................................................................
Advantages Of Inheritance In Dart
1. It promotes reusability of the code and reduces redundant code.
2. It helps to design a program in a better way.
3. It makes code simpler, cleaner and saves time and money on maintenance.
4. It facilitates the creation of class libraries.
5. It can be used to enforce standard interface to all children classes.
....................................................................................................
Types Of Inheritance In Dart
1. Single Inheritance - In this type of inheritance, a class can inherit from only one class.
In Dart, we can only extend one class at a time.

2. Multilevel Inheritance - In this type of inheritance, a class can inherit from another class and that class can also inherit from another class. 
In Dart, we can extend a class from another class which is already extended from another class.

3. Hierarchical Inheritance - In this type of inheritance, parent class is inherited by multiple subclasses. 
For example, the Car class can be inherited by the Toyota class and Honda class.

4. Multiple Inheritance - In this type of inheritance, a class can inherit from multiple classes. 
Dart does not support multiple inheritance. For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.
.......................................................................................................................
Key Points
1.Inheritance is used to reuse the code.
2. Inheritance is a concept which is achieved by using the extends keyword.
3. Properties and methods of the super class can be accessed by the sub class.
4. Class Dog extends class Animal{} means Dog is sub class and Animal is super class.
5. The sub class can have its own properties and methods.

*/

class Car {
  // Properties
  String? name;
  double? price;
}

class Tesla extends Car {
  // Method to display the values of the properties
  void display() {
    print("Name: ${name}");
    print("Price: ${price}");
  }
}

void main() {
  // Create an object of Tesla class
  Tesla t = new Tesla();
  // setting values to the object
  t.name = "Tesla Model 3";
  t.price = 50000.00;
  // Display the values of the object
  t.display();
}