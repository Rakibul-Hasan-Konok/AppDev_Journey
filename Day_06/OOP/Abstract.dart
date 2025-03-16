/*
Abstract classes are classes that cannot be initialized. 
It is used to define the behavior of a class that can be inherited by other classes. 
An abstract class is declared using the keyword abstract.
.......................................................................
Key Points To Remember
1. You can’t create an object of an abstract class.
2. It can have both abstract and non-abstract methods.
3. It is used to define the behavior of a class that other classes can inherit.
4. Abstract method only has a signature and no implementation.
*/



abstract class Vehicle {
  // Abstract method
  void start();
  // Abstract method
  void stop();
}

class Car extends Vehicle {
  // Implementation of start()
  @override
  void start() {
    print('Car started');
  }

  // Implementation of stop()
  @override
  void stop() {
    print('Car stopped');
  }
}

class Bike extends Vehicle {
  // Implementation of start()
  @override
  void start() {
    print('Bike started');
  }

  // Implementation of stop()
  @override
  void stop() {
    print('Bike stopped');
  }
}

void main() {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();
}