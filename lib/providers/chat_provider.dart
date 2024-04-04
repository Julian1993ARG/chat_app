import 'package:chat_app/Models/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(text: 'Hola!', fromWho: FromWho.me),
    Message(text: 'Que hacy ta noche?', fromWho: FromWho.me),
  ];

  get scrollController => chatScrollController;

  Future<void> sendMessage(String text) async {
    if(text.isEmpty) return;
    final Message newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

}
