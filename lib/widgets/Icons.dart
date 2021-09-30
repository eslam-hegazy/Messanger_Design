import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class icons extends StatelessWidget {
  final IconData icon;
  final Function press;
  icons(this.icon, this.press);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.3),
        ),
        IconButton(onPressed: () => press, icon: Icon(icon)),
      ],
    );
  }
}
