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
          appBar: AppBar(
            title: const Text("Prashik's app still in progress"),
            backgroundColor: Colors.amber,
          ),
          body: Center(
            child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: SnackBarExample())),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint('Clicked'),
            tooltip: 'jast nko dabu tutan button ',
            child: const Icon(Icons.ac_unit_outlined),
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

//? Floating SnackBar

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        'show snackbar on click !',
        style: TextStyle(
            color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            // content: const Text('awesome Snackbar !'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                //!code you want to execute on click of Action
              },
            ),
            content: const Text(
              'Awsome Snackbar !',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            duration: const Duration(seconds: 1),
            width: 280,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }
}
