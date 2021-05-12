import 'package:flutter/material.dart';

Widget DisplayNot(data, BuildContext context){
  return Text(
        data.info,
        style: TextStyle(
          color: Colors.white,
        ),
        maxLines: 3,
      );
}