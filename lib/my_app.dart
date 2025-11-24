import 'package:flutter/material.dart';
import 'package:ai_text_assistant/features/chat/chat_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Text Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.cyan,
        useMaterial3: true,
      ),
      home: ChatScreen(),
    );
  }
}