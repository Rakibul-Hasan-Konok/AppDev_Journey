import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void showMySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)), // Wrap message in Text widget
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          titleSpacing: 10,
          toolbarHeight: 60,
          elevation: 10,
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () => showMySnackBar("I am Comment", context),
              icon: const Icon(Icons.comment),
            ),
            IconButton(
              onPressed: () => showMySnackBar("I am Search", context),
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () => showMySnackBar("I am Settings", context),
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () => showMySnackBar("I am Email", context),
              icon: const Icon(Icons.email),
            ),
          ],
        ),
      ),
    );
  }
}
