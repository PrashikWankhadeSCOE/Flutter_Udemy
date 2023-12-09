import 'package:flutter/material.dart';

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});
  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      richMessage: TextSpan(
        text: 'I am a rich tooltip how am i looking ',
        style: TextStyle(color: Colors.red),
        children: <InlineSpan>[
          TextSpan(
            text:
                'I am another span of this rich tooltip and i am different ie bold',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ],
      ),
      child: Text('tap and hold this text to see tooltip'),
    );
  }
}
