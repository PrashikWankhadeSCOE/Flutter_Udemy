import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButtonExample(),
        IconButtonExample(),
        SwitchExample(),
      ],
    );
  }
}

class SwitchExample extends StatelessWidget {
  const SwitchExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: true,
      onChanged: (value) {
        print(value);
      },
    );
  }
}

class IconButtonExample extends StatelessWidget {
  const IconButtonExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => debugPrint('pressed icon button'),
        icon: const Icon(Icons.play_arrow_rounded));
  }
}

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        // style: ButtonStyle(
        //     backgroundColor:
        //         MaterialStateColor.resolveWith((states) => Colors.blue)),
        onPressed: () => debugPrint('pressed'),
        onLongPress: () => debugPrint('LongPressed'),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.amber),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Text Button',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )));
  }
}