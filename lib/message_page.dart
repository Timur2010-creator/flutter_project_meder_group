import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(
            fontFamily: 'FascinateInline',
          ),
        ),
        centerTitle: true, // Заголовок по центру
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Экран сообщений 💬',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontFamily: 'FascinateInline',
          ),
        ),
      ),
    );
  }
}