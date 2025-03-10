void main(){

var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
flybyObjects.where((name) => name.contains('tu')).forEach(print);

// Alternative Approach


  for (var name in flybyObjects) {
    if (name.contains('turn')) {
      print(name);
    }
  }



}