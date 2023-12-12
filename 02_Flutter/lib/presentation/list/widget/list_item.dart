import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final int index;
  final String title;
  const ListItem({required this.index, required this.title, super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool? _istrue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        subtitle: Text('item no ${widget.index}'),
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Checkbox(
          value: _istrue,
          onChanged: ((value) {
            setState(() {
              _istrue = value;
            });
          }),
        ),
      ),
    );
  }
}
