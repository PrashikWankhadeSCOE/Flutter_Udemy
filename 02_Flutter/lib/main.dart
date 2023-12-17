// ignore_for_file: unused_import

import 'package:basics/application/theme_service.dart';
import 'package:basics/bottom_navigation.dart';
import 'package:basics/presentation/counter/counter_screen.dart';
import 'package:basics/presentation/list/list_screen.dart';
import 'package:basics/presentation/navigtion_example_screens/screen_one.dart';
import 'package:basics/presentation/navigtion_example_screens/screen_two.dart';
import 'package:basics/presentation/widget_example_screen/widget_exammple_screen.dart';
import 'package:basics/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
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
      },
    );
  }
}
