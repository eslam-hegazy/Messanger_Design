import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/users.dart';

class card extends StatelessWidget {
  final bool story;
  final bool open;
  final String image;
  final String name;
  final String sutitle;
  final String time;

  card(this.story, this.open, this.image, this.name, this.sutitle, this.time);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Users(story, open, image),
          SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Text(
                    sutitle,
                    style: TextStyle(
                      height: 2,
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      height: 2,
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
