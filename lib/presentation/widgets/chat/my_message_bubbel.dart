import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "Fuck!! ",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(height: 10,)
    ]);
  }
}
