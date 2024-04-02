import 'package:chat_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/my_message_bubbel.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return index.isEven
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
              },
            )),
            const Text("Type a message")
          ],
        ),
      ),
    );
  }
}