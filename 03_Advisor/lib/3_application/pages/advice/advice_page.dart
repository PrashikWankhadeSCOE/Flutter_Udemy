import 'package:advisor/3_application/core/services/theme_service.dart';
import 'package:advisor/3_application/pages/advice/widgets/advice_field.dart';
import 'package:advisor/3_application/pages/advice/widgets/costum_button.dart';
import 'package:advisor/3_application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adviser ',
          style: themeData.textTheme.displayLarge,
        ),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toogleTheme();
            },
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: Center(
                    child: ErrorMessage(message: 'Oops Something gone wrong !!')

                    //AdviceField(advice: 'Example Advice -- Your day will be good !')
/*
                  CircularProgressIndicator(
                color: themeData.colorScheme.secondary,
              ),
*/
/*
                  Text(
                'Your advice is waiting for you here',
                style: themeData.textTheme.bodyLarge,
              ),
              */
                    )),
            SizedBox(height: 200, child: Center(child: CostumButton())),
          ],
        ),
      ),
    );
  }
}
