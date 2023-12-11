import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text(
          _count.toString(),
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: _count > 5
                  ? Colors.black
                  : _count > 0
                      ? Colors.blue
                      : Colors.deepPurple),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'minus',
              onPressed: () {
                setState(() {
                  _count--;
                });
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: 'plus',
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
