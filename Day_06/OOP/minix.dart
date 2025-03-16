/*
Mixins are a way of reusing the code in multiple classes. 
Mixins are declared using the keyword mixin followed by the mixin name. 
Three keywords are used while working with mixins: mixin, with, and on. 
It is possible to use multiple mixins in a class.
................................................................
ules For Mixin
1. Mixin can’t be instantiated. You can’t create object of mixin.
2. Use the mixin to share the code between multiple classes.
3. Mixin has no constructor and cannot be extended.
4. It is possible to use multiple mixins in a class.
*/


mixin CanFly {
  void fly() {
    print('I can fly');
  }
}

mixin CanWalk {
  void walk() {
    print('I can walk');
  }
}

class Bird with CanFly, CanWalk {
 
}

class Human with CanWalk {
 
}

void main() {
  var bird = Bird();
  bird.fly();
  bird.walk();

  var human = Human();
  human.walk();
}