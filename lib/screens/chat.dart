import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink ,
        title: Text('Chats'),
      ),
      body: Center(
        child: Text("Chat Screen"),
      ),
    );
  }
}