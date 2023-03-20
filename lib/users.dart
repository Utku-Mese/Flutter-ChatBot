import 'dart:math';

import 'package:chatpgtapp/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Users extends StatelessWidget {
  Users({super.key, required this.name});

  final String name;

  int colorNum = Random().nextInt(16);

  var myColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.teal,
    Colors.cyan,
    Colors.lime,
    Colors.blueGrey,
    Colors.amber,
    Colors.blueAccent,
    Colors.lightGreenAccent,
    Colors.lightBlueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color.fromARGB(255, 232, 228, 236),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 112, 50, 121).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: myColor[colorNum],
            child: Text(name[0].toUpperCase()),
          ),
          title: Text(name),
          subtitle: const Text("Hiden message"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ChatScreen(name: name, color: myColor[colorNum]),
              ),
            );
          },
        ).px24(),
      ),
    );
  }
}
