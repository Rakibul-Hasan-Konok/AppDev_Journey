/*
Encapsulation means hiding data within a library, preventing it from outside factors.
It helps you control your program and prevent it from becoming too complicated.
.........................................................................................
Encapsulation can be achieved by:

1. Declaring the class properties as private by using underscore(_).
2. Providing public getter and setter methods to access and update the value of private property.
.........................................................................................................
Why Encapsulation Is Important?
1. Data Hiding: Encapsulation hides the data from the outside world.
It prevents the data from being accessed by the code outside the class. This is known as data hiding.

2. Testability: Encapsulation allows you to test the class in isolation. 
It will enable you to test the class without testing the code outside the class.

3. Flexibility: Encapsulation allows you to change the implementation of the class without affecting the code outside the class.

4. Security: Encapsulation allows you to restrict access to the class members. It will enable you to limit access to the class members from the code outside the library.
*/



class Employee {
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int getId() {
    return _id!;
  }
// Getter method to access private property _name
  String getName() {
    return _name!;
  }
// Setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }
// Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
  
}

void main() {
  // Create an object of Employee class
  Employee emp = new Employee();
  // setting values to the object using setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");
}