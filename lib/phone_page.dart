import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Calls',
          style: TextStyle(
            fontFamily: 'FascinateInline',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Экран звонков 📞',
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