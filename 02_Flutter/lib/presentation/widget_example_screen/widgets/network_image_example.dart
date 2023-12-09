import 'package:flutter/material.dart';

class NetworkImageExample extends StatelessWidget {
  const NetworkImageExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 100,
        height: 100,
        child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/17/35/17/240_F_117351782_ugRMzKUg8pz8ucKVqIPI1JzQSCItC0Hx.jpg')));
  }
}
