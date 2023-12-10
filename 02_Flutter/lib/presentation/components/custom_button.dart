import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  const CustomButton(
      {required this.onTap,
      required this.icon,
      required this.iconColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.yellow, Colors.green]),
            shape: BoxShape.circle),
        child: InkWell(
          onTap: () => onTap(),
          splashColor: Colors.red,
          customBorder: const CircleBorder(),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
