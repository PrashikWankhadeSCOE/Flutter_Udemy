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
          body: Container(
            color: Colors.pink[900],
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.pink[300],
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'this is first column',
                      style: TextStyle(
                          color: Color.fromARGB(161, 111, 025, 58),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 200,
                  width: 300,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      'this is second column',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
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
