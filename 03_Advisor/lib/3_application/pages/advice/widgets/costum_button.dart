import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  final Function()? onTap;
  const CostumButton({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: onTap?.call(),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: onTap == null
                  ? themeData.colorScheme.errorContainer
                  : themeData.colorScheme.secondary),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Text(
              'Get Advice',
              style: themeData.textTheme.displayLarge?.copyWith(
                  color: onTap == null ? Colors.grey : Colors.blueAccent),
            ),
          ),
        ),
      ),
    );
  }
}
