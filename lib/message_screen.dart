import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Send a message, get a message\n',style:
          TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize:16.0,
          ),),
        Text('Direct Messages are private conversations between you and other people on Twitter.',style:
        TextStyle(
          color: Colors.grey,
          fontSize:16.0,
        ),),
        Text('Share Tweets, media and more!',style:
        TextStyle(
          color: Colors.grey,
          fontSize:16.0,
        ),),
      ],
    );
  }
}
