import 'package:chat_ui/widgets/bottom_text_field.dart';
import 'package:chat_ui/widgets/recived_message.dart';
import 'package:chat_ui/widgets/sended_message.dart';
import 'package:flutter/material.dart';

class ChatUi extends StatelessWidget {
  const ChatUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Chat',
            style: TextStyle(fontSize: 27, color: Colors.white),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    SendedMessage(text: 'Hello'),
                    SendedMessage(text: 'How are you today?'),
                    RecivedMessage(text: 'hi,'),
                    RecivedMessage(text: 'I am fine, thank you. How are you?'),
                    SendedMessage(text: 'I am good too'),
                    RecivedMessage(text: 'Are you going to market today?'),
                    SendedMessage(text: 'I suppose I am'),
                    SendedMessage(
                        text: 'But I may not go if the weather is bad.'),
                  ],
                ),
              ),
              const BottomTextField()
            ],
          ),
        ));
  }
}
