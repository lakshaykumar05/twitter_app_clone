import 'package:flutter/material.dart';



class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // trailing: Icon(
      //   icon:
      // ),
      title: Text(
        'World Health Organization approves Chinese vaccine for emergency use',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
