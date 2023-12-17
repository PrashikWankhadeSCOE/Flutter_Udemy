import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Screen One",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: TextButton(
          child: const Text('back button'),
          onPressed: () {
            Navigator.popUntil(
              context,
              ((route) => route.isFirst),
            );
          },
        ),
      ),
    );
  }
}
