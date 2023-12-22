import 'package:advisor/3_application/core/services/theme_service.dart';
import 'package:advisor/3_application/pages/advice/cubit/advicer_cubit.dart';
import 'package:advisor/3_application/pages/advice/widgets/advice_field.dart';
import 'package:advisor/3_application/pages/advice/widgets/costum_button.dart';
import 'package:advisor/3_application/pages/advice/widgets/error_message.dart';
import 'package:advisor/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AdvicerPageWrapperProvider extends StatelessWidget {
  const AdvicerPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AdvicerCubit>(),
      child: const AdvicerPage(),
    );
  }
}

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: BlocBuilder<AdvicerCubit, AdvicerCubitState>(
                    builder: (context, state) {
                  if (state is AdvicerInitial) {
                    return Text(
                      'Your advice is waiting for you here',
                      style: themeData.textTheme.bodyLarge,
                    );
                  } else if (state is AdvicerStateLoading) {
                    return CircularProgressIndicator(
                      color: themeData.colorScheme.secondary,
                    );
                  } else if (state is AdvicerStateLoaded) {
                    return AdviceField(advice: state.advice);
                  } else if (state is AdvicerStateError) {
                    return ErrorMessage(message: state.message);
                  } else {
                    return const ErrorMessage(
                        message: '"OOpps Something gone wrong !!"');
                  }
                }),
              ),
            ),
            const SizedBox(height: 200, child: Center(child: CostumButton())),
          ],
        ),
      ),
    );
  }
}
