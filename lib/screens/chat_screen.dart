import 'package:flutter/material.dart';
import 'package:message_gpt/constants/colors.dart';
import 'package:dash_chat_2/dash_chat_2.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatUser _currentUser =
      ChatUser(id: '1', firstName: "azix", lastName: "khan");
  final ChatUser _gptChatUser =
      ChatUser(id: '2', firstName: "Chat", lastName: "Gpt");

  List<ChatMessage> _messages = <ChatMessage>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'GPT Chat',
          style: TextStyle(color: goldenColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: DashChat(
          currentUser: _currentUser,
          messageOptions: const MessageOptions(
            currentUserContainerColor: goldenColor,
            containerColor: whiteColor,
            textColor: blackColor,
          ),
          onSend: (ChatMessage m) {
            getChatResponse(m);
          },
          messages: _messages),
    );
  }

  Future<void> getChatResponse(ChatMessage m) async {
    // print(m.text);
    setState(() {
      _messages.insert(0, m);
    });
  }
}
