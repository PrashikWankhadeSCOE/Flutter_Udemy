import 'package:basics/presentation/components/custom_button.dart';
import 'package:basics/presentation/widget_example_screen/widgets/first_column_child.dart';
import 'package:basics/presentation/widget_example_screen/widgets/hello_world_widget.dart';
import 'package:basics/presentation/widget_example_screen/widgets/layout_builder_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/media_query_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/network_image_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/row_expanded_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/stack_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/button_example.dart';
import 'package:flutter/material.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Basics")),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const RowExpandedExample(),
              const SizedBox(
                height: 20,
              ),
              const FirstColumnChild(),
              const SizedBox(
                height: 20,
              ),
              const HelloWorldWidget(),
              const SizedBox(
                height: 20,
              ),
              const StackExample(),
              const SizedBox(
                height: 20,
              ),
              const NetworkImageExample(),
              const SizedBox(
                height: 20,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 40,
              ),
              const LayoutBuilderExample(),
              const SizedBox(
                height: 40,
              ),
              const ButtonExample(),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  print("tapped");
                },
                icon: Icons.home,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('clicked'),
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
