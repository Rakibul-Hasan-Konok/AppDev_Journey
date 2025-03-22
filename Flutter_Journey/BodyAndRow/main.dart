
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("MyApp"),
//           backgroundColor: Colors.greenAccent[400],
//         foregroundColor: Colors.white,
//         elevation: 50.0,
//         ),
//       body: Container(
//          height: 250,
//          width: 250,
//          alignment: Alignment.topCenter,
//          margin: EdgeInsets.all(30),
//          padding: EdgeInsets.all(40),
//          // ignore: sort_child_properties_last
         
//          decoration: BoxDecoration(
//           color: Colors.blue,
//           border: Border.all(color: Colors.black,width: 6)
//          ),
//          child: Text("Hello World"),
//       ),
//       ),
      
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          backgroundColor: Colors.greenAccent[400],
        foregroundColor: Colors.white,
        elevation: 50.0,
        ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
         height: 250,
         width: 250, 
         decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black,width: 6)
         ),
         child: Text("Hello World 1"),
      ),
      Container(
         height: 250,
         width: 250, 
         decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black,width: 6)
         ),
         child: Text("Hello World 2"),
      ),
        ],
      )
      ),
      
    );
  }
}
