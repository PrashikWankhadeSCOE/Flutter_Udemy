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
            color: Colors.white,
            child: const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: ColumnPaddingSizedboxSample()),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint('Clicked'),
            tooltip: 'jast nko dabu tutan button ',
            child: const Icon(Icons.ac_unit_outlined),
          ),
        ));
  }
}

class ColumnPaddingSizedboxSample extends StatelessWidget {
  const ColumnPaddingSizedboxSample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              child: Text(
                'this is prashik -- flutter freelancer -- Leaving in Kalamb but now in pune ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 20,
              width: 20,
              color: Colors.green,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 500,
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
          height: 20,
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text(
              'Hello world !',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            SizedBox(
                height: 200, width: 150, child: Image.asset("assets/max.jpeg")),
            const Positioned(top: 50, left: 20, child: Text('prashik image')),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/17/35/17/240_F_117351782_ugRMzKUg8pz8ucKVqIPI1JzQSCItC0Hx.jpg'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.30),
            color: Colors.deepOrange[700],
          ),
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width * 0.8,
          child: const Center(child: Text('MediaQuery')),
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.yellowAccent,
          child: LayoutBuilder(
            builder: (context, constraints) => Center(
              child: Container(
                height: constraints.maxHeight / 2,
                width: constraints.maxWidth / 2,
                color: Colors.deepPurple,
                child: const Center(child: Text('Layout builder')),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class TooltipSample extends StatelessWidget {
//   const TooltipSample({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Tooltip(
//       richMessage: TextSpan(
//         text: 'I am a rich tooltip how am i looking ',
//         style: TextStyle(color: Colors.red),
//         children: <InlineSpan>[
//           TextSpan(
//             text:
//                 'I am another span of this rich tooltip and i am different ie bold',
//             style: TextStyle(fontWeight: FontWeight.w900),
//           ),
//         ],
//       ),
//       child: Text('tap and hold this text to see tooltip'),
//     );
//   }
// }

// //? Floating SnackBar

// class SnackBarExample extends StatelessWidget {
//   const SnackBarExample({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: const Text(
//         'show snackbar on click !',
//         style: TextStyle(
//             color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),
//       ),
//       onPressed: () {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             // content: const Text('awesome Snackbar !'),
//             action: SnackBarAction(
//               label: 'Action',
//               onPressed: () {
//                 //!code you want to execute on click of Action
//               },
//             ),
//             content: const Text(
//               'Awsome Snackbar !',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             duration: const Duration(seconds: 1),
//             width: 280,
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             behavior: SnackBarBehavior.floating,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
