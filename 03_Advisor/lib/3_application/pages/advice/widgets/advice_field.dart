import 'package:flutter/material.dart';

class AdviceField extends StatelessWidget {
  static String emptyadvice = 'What should i do with a empty advice';
  final String advice;
  const AdviceField({required this.advice, super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
            color: themeData.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Text(
            advice.isNotEmpty ? '" $advice "' : emptyadvice,
            style: themeData.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
