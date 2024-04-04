import 'package:chat_app/presentation/chat/chat_screen.dart';
import 'package:chat_app/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'Chat app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            // brightness: Brightness.dark,
          ),
        ),
        home: const ChatScreen(),
      ),
    );
  }
}
