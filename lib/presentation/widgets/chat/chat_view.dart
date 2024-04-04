import 'package:chat_app/Models/message.dart';
import 'package:chat_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/my_message_bubbel.dart';
import 'package:chat_app/presentation/widgets/shared/message_widget_box.dart';
import 'package:chat_app/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              controller: chatProvider.scrollController,
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];
                return message.fromWho == FromWho.me
                    ? MyMessageBubble(message: message)
                    : HerMessageBubble(message: message);
              },
            )),
            MessageBoxWidget(onSend: chatProvider.sendMessage,)
          ],
        ),
      ),
    );
  }
}
