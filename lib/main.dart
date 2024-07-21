import 'package:flutter/material.dart';
import 'package:message_gpt/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Flutter chatGpt App',
      home: const ChatScreen(),
    );
  }
}
