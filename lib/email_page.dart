import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Email',
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
          'Экран почты ✉️',
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