/*
** Inheritance is a sharing of behaviour between two classes. 
** It allows you to define a class that extends the functionality of another class. 
** The extend keyword is used for inheriting from parent class.
** A class cannot inherit from multiple classes.
** ParentClass is the super class and ChildClass is the sub class. 
** The ChildClass inherits the properties and methods of the ParentClass.
......................................................................
** The class whose properties and methods are inherited by another class is called parent class.
** The class that inherits the properties and methods of another class is called child class.
....................................................................................................
Advantages Of Inheritance In Dart
1. It promotes reusability of the code and reduces redundant code.
2. It helps to design a program in a better way.
3. It makes code simpler, cleaner and saves time and money on maintenance.
4. It facilitates the creation of class libraries.
5. It can be used to enforce standard interface to all children classes.
..............................................................................................
Types Of Inheritance In Dart
Single Inheritance - In this type of inheritance, a class can inherit from only one class. 
In Dart, we can only extend one class at a time.

Multilevel Inheritance - In this type of inheritance, a class can inherit from another class and that class can also inherit from another class. 
In Dart, we can extend a class from another class which is already extended from another class.

Hierarchical Inheritance - In this type of inheritance, parent class is inherited by multiple subclasses.
For example, the Car class can be inherited by the Toyota class and Honda class.

Multiple Inheritance - In this type of inheritance, a class can inherit from multiple classes. 
Dart does not support multiple inheritance. For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.
*/

class Person {
  // Properties
  String? name;
  int? age;

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}
// Here In student class, we are extending the
// properties and methods of the Person class
class Student extends Person {
  // Fields
  String? schoolName;
  String? schoolAddress;

  // Method
  void displaySchoolInfo() {
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

void main() {
  // Creating an object of the Student class
  var student = Student();
  student.name = "John";
  student.age = 20;
  student.schoolName = "ABC School";
  student.schoolAddress = "New York";
  student.display();
  student.displaySchoolInfo();
}