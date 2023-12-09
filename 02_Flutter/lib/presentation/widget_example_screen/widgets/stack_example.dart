import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            child: Image.asset(
          'assets/max.jpeg',
          fit: BoxFit.fill,
        )),
        const Positioned(
          top: 50,
          left: 20,
          child: Text('Prashik'),
        ),
      ],
    );
  }
}
