// ignore_for_file: unused_local_variable, dead_code

/*
If you want to store multiple values in the same variable, you can use List.
The List is represented by Square Braces[].
.........................
Types Of Lists
1. Fixed Length List
2. Growable List [Mostly Used]
..........................................
List Properties In Dart:
1. first: It returns the first element in the List.
2. last: It returns the last element in the List.
3. isEmpty: It returns true if the List is empty and false if the List is not empty.
4. isNotEmpty: It returns true if the List is not empty and false if the List is empty.
5. length: It returns the length of the List.
6. reversed: It returns a List in reverse order.
7. single: It is used to check if the List has only one element and returns it.

.............................................................
Adding Item To List:

1. add()	Add one element at a time and returns the modified List object.
2. addAll()	Insert the multiple values to the given List, and each value is separated by the commas and enclosed with a square bracket ([]).
3. insert()	Provides the facility to insert an element at a specified index position.
4. insertAll()	Insert the multiple value at the specified index position.
............................................................................
Removing List Elements::

1. remove()	Removes one element at a time from the given List.
2. removeAt()	Removes an element from the specified index position and returns it.
3. removeLast()	Remove the last element from the given List.
4. removeRange()	Removes the item within the specified range.
*/
void main(){

// Integer List
List<int> ages = [10, 30, 23];

// String List
List<String> names = ["Raj", "John", "Rocky"];

// Mixed List
var mixed = [10, "John", 18.8];

//The fixed-length Lists. 5 integers with the value 0.You cannot add a new item
var list = List<int>.filled(5,0);  
print(list);

//Growable List: A List defined without a specified length is called Growable List.
//The length of the growable List can be changed in runtime.
var list1 = [210,21,22,33,44,55];  
print(list1);

//Access Item Of List.List index always starts with 0
var list2 = [210, 21, 22, 33, 44, 55];

  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);
  print(list[4]);
  print(list[5]);

//Get Index By Value
print(list.indexOf(22));
print(list.indexOf(33));

//You can find the length of List by using .length property.
List<String> names2 = ["Raj", "John", "Rocky"];
print(names.length);
//Changing Values Of List
List<String> names3 = ["Raj", "John", "Rocky"];
   names[1] = "Bill";
   names[2] = "Elon";
   print(names);
//Mutable And Immutable List
List<String> names4 = ["Raj", "John", "Rocky"]; // Mutable List
names[1] = "Bill"; // possible
names[2] = "Elon"; // possible
    
const List<String> names5 = ["Raj", "John", "Rocky"]; // Immutable List
names[1] = "Bill"; // not possible
names[2] = "Elon"; // not possible
//Access First And Last Elements Of List
List<String> drinks = ["water", "juice", "milk", "coke"];
   print("First element of the List is: ${drinks.first}");
   print("Last element of the List is: ${drinks.last}");
  
//Check The List Is Empty Or Not

List<String> drinks1 = ["water", "juice", "milk", "coke"];
   List<int>  ages2 = [];
   print("Is drinks Empty: "+drinks.isEmpty.toString());
   print("Is drinks not Empty: "+drinks.isNotEmpty.toString());
   print("Is ages Empty: "+ages.isEmpty.toString());
   print("Is ages not Empty: "+ages.isNotEmpty.toString());
  
//Reverse List In Dart
List<String> drinks2 = ["water", "juice", "milk", "coke"];
print("List in reverse: ${drinks.reversed}");
//Replace Range Of List

var list4 = [10, 15, 20, 25, 30];
  print("List before updation: ${list}");
  list.replaceRange(0, 4, [5, 6, 7, 8]);
  print("List after updation using replaceAll() function : ${list}");

//Loops In List
List<int> list5 = [10, 20, 30, 40, 50];
  list.forEach((n) => print(n));

//Multiply All Value By 2 Of All List
List<int> list6 = [10, 20, 30, 40, 50];
  var douledList = list.map((n) => n * 2);

  print((douledList));

//Combine Two Or More List In Dart
List<String> names6 = ["Raj", "John", "Rocky"];
  List<String> names7 = ["Mike", "Subash", "Mark"];

  List<String> allNames = [...names, ...names2];
  print(allNames);
//Conditions In List .You can also use conditions in List. Here sad = false so cart doesn’t contain Beer in it
 bool sad = false;
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print(cart);

//Where In List Dart. 
//You can use where with List to filter specific items. Here in this example, even numbers are only filtered.
List<int> numbers = [2,4,6,8,10,11,12,13,14];

List<int> even = numbers.where((number)=> number.isEven).toList(); 
print(even);


}