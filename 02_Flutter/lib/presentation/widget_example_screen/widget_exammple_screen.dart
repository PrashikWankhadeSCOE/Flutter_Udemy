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
        child: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              RowExpandedExample(),
              SizedBox(
                height: 20,
              ),
              FirstColumnChild(),
              SizedBox(
                height: 20,
              ),
              HelloWorldWidget(),
              SizedBox(
                height: 20,
              ),
              StackExample(),
              SizedBox(
                height: 20,
              ),
              NetworkImageExample(),
              SizedBox(
                height: 20,
              ),
              MediaQueryExample(),
              SizedBox(
                height: 40,
              ),
              LayoutBuilderExample(),
              SizedBox(
                height: 40,
              ),
              ButtonExample(),
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
