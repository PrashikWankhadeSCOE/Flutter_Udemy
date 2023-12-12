import 'package:basics/presentation/list/widget/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> example = [
      "Alexander",
      "Sophia",
      "Liam",
      "Olivia",
      "Noah",
      "Emma",
      "Ethan",
      "Ava",
      "Benjamin",
      "Isabella",
      "Jackson",
      "Mia",
      "Aiden",
      "Harper",
      "Lucas",
      "Evelyn",
      "Mason",
      "Abigail",
      "Oliver",
      "Amelia",
      "Elijah",
      "Charlotte",
      "Caleb",
      "Scarlett",
      "Henry",
      "Grace",
      "Samuel",
      "Lily"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Example',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          // physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListItem(
              index: index,
              title: example[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: example.length,
        ),
      ),
    );
  }
}
