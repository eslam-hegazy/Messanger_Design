import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  final bool story;
  final bool open;
  final String image;
  Users(this.story, this.open, this.image);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (story == true)
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.lightBlueAccent,
          ),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
            ),
            if (open == true)
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
          ],
        ),
      ],
    );
  }
}
