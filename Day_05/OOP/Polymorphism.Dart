/*
Poly means many and morph means forms. 
Polymorphism is the ability of an object to take on many forms
...................................................................
Advantage Of Polymorphism In Dart
1. Subclasses can override the behavior of the parent class.
2. It allows us to write code that is more flexible and reusabl
 */


class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("Dog is eating");
  }
}

void main() {
  Animal animal = Animal();
  animal.eat();

  Dog dog = Dog();
  dog.eat();
}