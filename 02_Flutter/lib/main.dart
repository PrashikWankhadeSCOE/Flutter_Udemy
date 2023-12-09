import 'package:basics/presentation/widget_example_screen/widget_exammple_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.amber)),
        debugShowCheckedModeBanner: false,
        home: const WidgetExampleScreen());
  }
}
