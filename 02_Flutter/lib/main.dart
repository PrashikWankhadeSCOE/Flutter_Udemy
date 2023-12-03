import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Hello users !')),
          body: const Center(
            child: Text("Hello World !"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint('Clicked'),
            tooltip: 'jast nko dabu mobile futan ',
            child: const Icon(Icons.account_circle),
          ),
        ));
  }
}
