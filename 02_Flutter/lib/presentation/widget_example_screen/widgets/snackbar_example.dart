import 'package:flutter/material.dart';

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
