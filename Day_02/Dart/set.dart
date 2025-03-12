// ignore_for_file: unused_local_variable

/*
1.Set is a unique collection of items. 
2.You cannot store duplicate values in the Set. 
3. It is unordered,
4. It is represented by Curley Braces{}.
................................................................
Set Properties In Dart:

1. first ->	To get first value of Set.
2. last	-> To get last value of Set.
3. isEmpty	-> Return true or false.
4. isNotEmpty	-> Return true or false.
5. length	-> It returns the length of the Set.
..................................................................
Set Methods In Dart:
1.clear()	Removes all elements from the Set.
2. difference()	Creates a new Set with the elements of this that are not in other.
3. elementAt()	Returns the index value of element.
4. intersection()	Find common elements in two sets.
*/

void main(){
//How To Create A Set

Set<String> fruits = {"Apple", "Orange", "Mango"};
  print(fruits);
// using different properties of Set
  print("First Value is ${fruits.first}");
  print("Last Value is ${fruits.last}");
  print("Is fruits empty? ${fruits.isEmpty}");
  print("Is fruits not empty? ${fruits.isNotEmpty}");
  print("The length of fruits is ${fruits.length}");  

//Check The Available Value. contains method, which returns true or false.
print(fruits.contains("Mango"));
  print(fruits.contains("Lemon"));

//Add & Remove Items In Set
fruits.add("Grape");
fruits.remove("Apple");

//Adding Multiple Elements
Set<int> numbers = {10, 20, 30};
  numbers.addAll([40,50]);

//Printing All Values In Set
for(String fruit in fruits){
   print(fruit);
}

// to clear all items
  fruits.clear();
//Difference In Set
Set<String> fruits1 = {"Apple", "Orange", "Mango"};
  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};

  final differenceSet = fruits1.difference(fruits2);
//Intersection Method In Dart
final intersectionSet = fruits1.intersection(fruits2);

  print(intersectionSet);
}