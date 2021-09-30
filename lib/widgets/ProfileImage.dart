import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String image, num;

  ProfileImage(this.image, this.num);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CircleAvatar(
          radius: 23,
          backgroundImage: AssetImage(image),
        ),
        Positioned(
          top: -1,
          right: -2,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.red,
            child: Text(num),
          ),
        ),
      ],
    );
  }
}
