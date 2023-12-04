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
            child: SnackBarExample(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint('Clicked'),
            tooltip: 'jast nko dabu tutan button ',
            child: const Icon(Icons.account_circle),
          ),
        ));
  }
}

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});
  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      richMessage: TextSpan(
        text: 'I am a rich tooltip how am i looking ',
        style: TextStyle(color: Colors.red),
        children: <InlineSpan>[
          TextSpan(
            text:
                'I am another span of this rich tooltip and i am different ie bold',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ],
      ),
      child: Text('tap and hold this text to see tooltip'),
    );
  }
}

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('show snackbar on click !'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('awesome Snackbar !'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
