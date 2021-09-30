import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/DefaultTextForm.dart';
import 'package:untitled/widgets/Icons.dart';
import 'package:untitled/widgets/ProfileImage.dart';
import 'package:untitled/widgets/card.dart';
import 'package:untitled/widgets/head.dart';

import 'model/UserModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Massenger(),
    );
  }
}

class Massenger extends StatelessWidget {
  late bool story;
  late bool open;
  List<UserModel> data = [
    UserModel(
        true, true, "images/f1.png", "Olivia Narorto", "Hello ,", ". 7:45am"),
    UserModel(false, true, "images/f2.png", "Emma Lordiano",
        "Can Your Help Me Pleas ?..", ". 8:45am"),
    UserModel(
        true, false, "images/f3.png", "Ava Asha", "How Are You ? ", ". 9:25am"),
    UserModel(false, true, "images/f4.png", "Charlotte Charl", "You Love Me ?",
        ". 10:20am"),
    UserModel(
        true, true, "images/f5.png", "Sophia Potina", "Hi . ", ". 2:45pm"),
    UserModel(false, true, "images/f6.png", "Amelia Melano",
        "Tell Me How Old You ?", ". 1:30pm"),
    UserModel(false, true, "images/f7.png", "Isabella Lacaca",
        "Please Don't Forget Me!!", ". 9:45pm"),
    UserModel(true, true, "images/f8.png", "Mia khalil", "Hello , I Love You",
        ". 10:45pm"),
    UserModel(true, false, "images/f3.png", "Amelia Narorto",
        "Please ,Tell Me ?", ". 11:40"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            ProfileImage("images/pp.png", "5"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Chats",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        actions: [
          icons(Icons.camera_alt_outlined, () {
            print("camera");
          }),
          icons(Icons.edit, () {
            print("New User");
          }),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 16, bottom: 10),
        child: Column(
          children: [
            DefaultTextForm(),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.19,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Head(data[index].story, data[index].open,
                      data[index].image, data[index].name);
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return card(
                      data[index].story,
                      data[index].open,
                      data[index].image,
                      data[index].name,
                      data[index].subtitle,
                      data[index].time);
                },
                separatorBuilder: (context, index) => SizedBox(height: 5),
                itemCount: data.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
