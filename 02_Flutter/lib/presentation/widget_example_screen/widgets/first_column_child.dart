import 'package:flutter/material.dart';

class FirstColumnChild extends StatelessWidget {
  const FirstColumnChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'First Column child',
            style: TextStyle(
                color: Color.fromARGB(161, 111, 025, 58),
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
