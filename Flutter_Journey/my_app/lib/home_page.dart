import 'package:flutter/material.dart';
import 'widgets/dart_topic_card.dart';

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HomePage({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dartTopics = [
      {
        'title': 'Variables & Data Types',
        'description': 'Learn about int, double, String, bool, var, and dynamic types in Dart.',
        'code': '''void main() {
  int age = 25;
  String name = 'John';
  bool isStudent = true;
  print('Name: \$name, Age: \$age, Student: \$isStudent');
}'''
      },
      {
        'title': 'Functions',
        'description': 'Define reusable blocks of code with parameters and return values.',
        'code': '''int add(int a, int b) {
  return a + b;
}

void main() {
  print(add(5, 3)); // Output: 8
}'''
      },
      {
        'title': 'Classes & Objects',
        'description': 'Understand OOP concepts like constructors, methods, and inheritance.',
        'code': '''class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is \$name and I am \$age years old.');
  }
}

void main() {
  var person = Person('Alice', 30);
  person.greet();
}'''
      },
      {
        'title': 'Collections',
        'description': 'Work with Lists, Sets, Maps, and advanced collection operators.',
        'code': '''void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  for (var fruit in fruits) {
    print(fruit);
  }
}'''
      },
      {
        'title': 'Asynchronous Programming',
        'description': 'Master Futures, async/await, and Streams for async tasks.',
        'code': '''Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data loaded';
}

void main() async {
  print('Fetching data...');
  String data = await fetchData();
  print(data);
}'''
      },
      {
        'title': 'Null Safety',
        'description': 'Handle potential null values securely with Dart\'s null safety system.',
        'code': '''void main() {
  String? name;
  print(name ?? 'No name provided');
}'''
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Documentation'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Explore Dart Topics!',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...dartTopics.map((topic) => DartTopicCard(
              title: topic['title']!,
              description: topic['description']!,
              code: topic['code']!,
            )),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: toggleTheme,
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              label: Text(isDarkMode ? "Switch to Light Mode" : "Switch to Dark Mode"),
            ),
          ],
        ),
      ),
    );
  }
}
