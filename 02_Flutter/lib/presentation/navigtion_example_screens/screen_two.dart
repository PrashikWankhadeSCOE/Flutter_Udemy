import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Screen Two",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to screen one'),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/screenOne',
            );
          },
        ),
      ),
    );
  }
}
