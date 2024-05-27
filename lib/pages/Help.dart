import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/texts.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          'How to Play:',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Welcome to the Flag Quiz! Test your knowledge of countries around the world by identifying their flags.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        Text(
          'Game Rules:',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          '1. You will be shown a country flag.',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          '2. Choose the correct country name from the provided options.',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          '3. Tap the option you think is correct.',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          '4. If your answer is correct, your score will increase.',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          '5. If your answer is incorrect, the correct answer will be shown.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        Text(
          'Tips:',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          '- Take your time and examine the flag closely.',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          '- Pay attention to the color patterns and symbols.',
          style: TextStyle(fontSize: 16),
        ),

      SizedBox(height: 20),
      Text(
        'Good luck and have fun!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ],
    ),
    ),
    );
  }
}
