import 'package:basics/presentation/components/custom_button.dart';
import 'package:basics/presentation/widget_example_screen/widgets/first_column_child.dart';
import 'package:basics/presentation/widget_example_screen/widgets/hello_world_widget.dart';
import 'package:basics/presentation/widget_example_screen/widgets/layout_builder_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/media_query_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/network_image_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/person.dart';
import 'package:basics/presentation/widget_example_screen/widgets/row_expanded_example.dart';
import 'package:basics/presentation/widget_example_screen/widgets/button_example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:basics/application/theme_service.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
        "Flutter Basics",
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ))),
      body: Container(
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
              const Person(
                  picUrl:
                      'https://www.shutterstock.com/shutterstock/photos/1218518830/display_1500/stock-photo-couple-of-sheep-run-across-the-mountain-meadow-cloudy-autumn-weather-1218518830.jpg',
                  age: '22',
                  name: 'Prashik',
                  country: 'India',
                  job: 'Unemployeed'),
              const SizedBox(
                height: 20,
              ),
              const Person(
                  picUrl:
                      'https://www.shutterstock.com/shutterstock/photos/159086927/display_1500/stock-photo-black-rowan-berries-on-branches-with-red-leaves-on-an-abstract-background-of-autumn-159086927.jpg',
                  age: '10',
                  name: 'Kabir',
                  country: 'India',
                  job: '5th Standard'),
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
                  Navigator.pushNamed(
                    context,
                    '/screenOne',
                  );
                },
                icon: Icons.home,
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              CostumButtonGesture(
                text: 'GestureButton',
                onTap: () {
                  // debugPrint('hello tapped');
                  Navigator.pushNamed(
                    context,
                    '/screenTwo',
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Provider.of<ThemeService>(context, listen: false).toogleTheme(),
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
