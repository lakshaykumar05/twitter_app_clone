import 'package:flutter/material.dart';

class storyView extends StatefulWidget {
  @override
  _storyViewState createState() => _storyViewState();
}

class _storyViewState extends State<storyView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Story will appear when API will be used . Thank You',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),),
    );
  }
}
