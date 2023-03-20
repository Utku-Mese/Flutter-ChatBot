import 'package:chatpgtapp/users.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});

  var username = {
    "My bot friend",
    "ahmet",
    "mehmet",
    "ali",
    "veli",
    "osman",
    "ömer",
    "özlem",
    "utku",
    "hayriye",
    "ayşe",
    "fatma",
    "hüseyin",
    "hakan",
    "hasan",
    "hüsnü",
    "hüsna",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading:
            const Icon(Icons.chat_rounded, size: 45, color: Colors.deepPurple)
                .px16(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.deepPurple),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.deepPurple),
          ),
        ],
        title: Text(
          "Heyyo!",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Pacifico",
              letterSpacing: 2,
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.deepPurple.withOpacity(0.5),
                  offset: const Offset(3.0, 3.0),
                ),
              ]),
        ),
      ),
      body: ListView.builder(
        itemCount: username.length,
        itemBuilder: (context, index) {
          return Users(name: username.elementAt(index));
        },
      ),
    );
  }
}
