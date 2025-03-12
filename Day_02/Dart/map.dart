/*
Map, data is stored as keys and values. In Map, each key must be unique
.................................
Map Properties In Dart:

1. keys	-> To get all keys.
2. values	-> To get all values.
3. isEmpty ->	Return true or false.
4. isNotEmpty ->	Return true or false.
5. length ->	It returns the length of the Map.
.........................................................
Map Methods In Dart
Some useful Map methods in dart.

1. keys.toList()	Convert all Maps keys to List.
2. values.toList()	Convert all Maps values to List.
3. containsKey(‘key’)	Return true or false.
4. containsValue(‘value’)	Return true or false.
5. clear()	Removes all elements from the Map.
6. removeWhere()	Removes all elements from the Map if condition is valid.
......................................................................................

*/
void main(){

//How To Create Map In Dart
Map<String, String> countryCapital = {
  'USA': 'Washington, D.C.',
  'India': 'New Delhi',
  'China': 'Beijing'
};
  print(countryCapital);
//Example Of Map Properties In Dart
Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  
  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");
  print("Is Map empty: ${expenses.isEmpty}");
  print("Is Map not empty: ${expenses.isNotEmpty}");
  print("Length of map is: ${expenses.length}");

//Adding Element To Map
expenses['wed']=4545.0;

//Removing Items From Map

expenses.remove('mon');

//Looping Over Element Of Map

for(MapEntry Day in expenses.entries){
    print('Key is ${Day.key}, value ${Day.value}');
  }

//Looping In Map Using For Each
expenses.forEach((key,value)=> print('Key is $key and value is $value'));

//Remove Where In Dart Map 

expenses.removeWhere((key, value) => value < 324.00);
}