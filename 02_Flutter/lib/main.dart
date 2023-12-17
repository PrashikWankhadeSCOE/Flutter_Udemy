// ignore_for_file: unused_import

import 'package:basics/bottom_navigation.dart';
import 'package:basics/presentation/counter/counter_screen.dart';
import 'package:basics/presentation/list/list_screen.dart';
import 'package:basics/presentation/navigtion_example_screens/screen_one.dart';
import 'package:basics/presentation/navigtion_example_screens/screen_two.dart';
import 'package:basics/presentation/widget_example_screen/widget_exammple_screen.dart';
import 'package:basics/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const RootBottomNavigation(),
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => const RootBottomNavigation(),
        '/screenOne': (BuildContext context) => const ScreenOne(),
        '/screenTwo': (BuildContext context) => const ScreenTwo(),
      },
    );
  }
}
