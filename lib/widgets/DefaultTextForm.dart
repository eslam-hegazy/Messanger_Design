import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.withOpacity(0.5),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          // fillColor: Colors.grey.withOpacity(0.5),
          // filled: true,
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey.withOpacity(0.7),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
