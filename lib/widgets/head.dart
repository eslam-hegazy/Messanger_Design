import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/users.dart';

class Head extends StatelessWidget {
  final bool story;
  final bool open;
  final String image;
  final String name;

  Head(this.story, this.open, this.image, this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.20,
        child: Column(
          children: [
            Users(story, open, image),
            SizedBox(height: 10),
            Text(
              name,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                inherit: true,
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
