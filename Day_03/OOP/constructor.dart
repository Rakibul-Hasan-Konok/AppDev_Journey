/*
1. A constructor is a special method used to initialize an object.
2. It is called automatically when an object is created.
...........................................................
Things To Remember
1. The constructor’s name should be the same as the class name.
2. Constructor doesn’t have any return type.
...................................................................
Key Points
1. The constructor’s name should be the same as the class name.
2. Constructor doesn’t have any return type.
3. Constructor is only called once at the time of the object creation.
4. Constructor is called automatically when an object is created.
5. Constructor is used to initialize the values of the properties of the class
*/

//How To Declare Constructor In Dart

class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print(
        "Constructor called"); // this is for checking the constructor is called or not.
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}