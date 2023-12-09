import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.deepOrange),
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width * 0.8,
      child: const Center(child: Text('MedaiQuery in Scaffold')),
    );
  }
}
