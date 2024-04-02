import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: colors.secondary,
          ),
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "Her Message",
            style: TextStyle(color: colors.background),
          ),
        ),
      ),
      const SizedBox(height: 10,)
    ]);
  }
}
