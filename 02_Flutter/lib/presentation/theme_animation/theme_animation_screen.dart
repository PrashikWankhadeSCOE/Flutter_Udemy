import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/theme_animation/widgets/moon.dart';
import 'package:basics/presentation/theme_animation/widgets/star.dart';
import 'package:basics/presentation/theme_animation/widgets/sun.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Theme Animation',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Consumer<ThemeService>(
        builder: (context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: themeService.isDarkModeOn
                            ? Colors.black.withOpacity(0.7)
                            : Colors.grey,
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 3),
                  ],
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: themeService.isDarkModeOn
                        ? const [
                            Color(0xFF200F75),
                            Color(0xFF6B66CC),
                            Color(0xFF94A9FF)
                          ]
                        : const [
                            Color(0xDD940B99),
                            Color(0xDDFFA057),
                            Color(0xDDFFFA66),
                          ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 220,
                      right: 50,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      right: 300,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 210,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 100,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      right: 50,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 300,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      right: 250,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      right: 170,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: 200,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: const Star(),
                      ),
                    ),
                    AnimatedPositioned(
                      curve: Curves.easeOutCirc,
                      duration: const Duration(milliseconds: 1000),
                      top: themeService.isDarkModeOn ? 100 : 150,
                      right: themeService.isDarkModeOn ? 100 : -40,
                      child: AnimatedOpacity(
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 500),
                        child: const Moon(),
                      ),
                    ),
                    AnimatedPadding(
                      duration: const Duration(milliseconds: 500),
                      padding: EdgeInsets.only(
                          top: themeService.isDarkModeOn ? 110 : 50),
                      child: const Center(child: Sun()),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16)),
                          color: themeService.isDarkModeOn
                              ? Colors.grey[800]
                              : Colors.white,
                        ),
                        height: 225,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              themeService.isDarkModeOn
                                  ? 'To Dark ??'
                                  : 'To Light ??',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: themeService.isDarkModeOn
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              themeService.isDarkModeOn
                                  ? 'Let the sun rise ! '
                                  : 'Let it be Night !',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                color: themeService.isDarkModeOn
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Switch(
                              value: themeService.isDarkModeOn,
                              onChanged: ((_) => themeService.toogleTheme()),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
