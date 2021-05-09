import 'package:flutter/material.dart';
import 'storydata.dart';

Widget storyButton(StoryData, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
        children: [
    InkWell(
    borderRadius: BorderRadius.circular(50.0),
    onTap: (){

    },
    child: Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.red,width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(
                         image:
                       AssetImage(StoryData.avatarUrl),
                       fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    ),
  ),
    SizedBox(
    height: 6.0,
    ),
      Text(StoryData.userName),
    ],
    ),
    );
}