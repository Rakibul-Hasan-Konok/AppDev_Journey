/*

A static variable is a variable that is shared by all instances of a class. 
It is declared using the static keyword. 
It is initialized only once when the class is loaded. 
It is used to store the class-level data.
.....................................................
Key Points To Remember
1. Static members are accessed using the class name.
2. All instances of a class share static members.
*/


class Employee {
  // Static variable
  static int count = 0;
  // Constructor
  Employee() {
    count++;
  }
  // Method to display the value of count
  void totalEmployee() {
    print("Total Employee: $count");
  }
}

void main() {
  // Creating objects of Employee class
  Employee e1 = new Employee();
  e1.totalEmployee();
  Employee e2 = new Employee();
  e2.totalEmployee();
  Employee e3 = new Employee();
  e3.totalEmployee();
}