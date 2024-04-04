import 'package:chat_app/Models/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola!', fromWho: FromWho.me),
    Message(text: 'Que hacy ta noche?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final Message newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
  }

}
