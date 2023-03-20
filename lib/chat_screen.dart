import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.name, required this.color});

  final String name;
  final Color color;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];

  void _sendMessage(String text) {
    final message = ChatMessage(
      text: text,
      sender: "Me",
      color: widget.color,
    );
    setState(() {
      if (text.isNotEmpty) {
        _messages.insert(0, message);
      }
    });
  }

  void _aiMessage(String text, String name) {
    String reply = "I don't understand what you are saying.";
    if (text == "hi" ||
        text == "hello" ||
        text == "hey" ||
        text == "hi there" ||
        text == "hello there" ||
        text == "hey there" ||
        text == "hi there!" ||
        text == "hello there!" ||
        text == "hey there!") {
      reply = "hello there!";
    } else if (text == "how are you" ||
        text == "how are you doing" ||
        text == "how are you doing today" ||
        text == "how are you doing today") {
      reply = "I am doing great!";
    } else if (text == "what is your name?" ||
        text == "what's your name?" ||
        text == "what's your name" ||
        text == "what is your name") {
      reply = "My name is $name!";
    } else if (text == "What is your age?" ||
        text == "What's your age?" ||
        text == "What's your age" ||
        text == "What is your age") {
      reply = "I am 1 year old!";
    } else if (text == "What is your gender?" ||
        text == "What's your gender?" ||
        text == "What's your gender" ||
        text == "What is your gender") {
      reply = "I am a bot!";
    } else if (text == "what is your favorite color" ||
        text == "What's your favorite color?" ||
        text == "What's your favorite color" ||
        text == "What is your favorite color") {
      reply = "My favorite color is purple!";
    } else if (text == "What is your favorite food?" ||
        text == "What's your favorite food?" ||
        text == "What's your favorite food" ||
        text == "What is your favorite food") {
      reply = "My favorite food is sarma!";
    } else if (text == "What is your favorite movie?" ||
        text == "What's your favorite movie?" ||
        text == "What's your favorite movie" ||
        text == "What is your favorite movie") {
      reply = "My favorite movie is Iron man!";
    } else if (text == "What is your favorite song?" ||
        text == "What's your favorite song?" ||
        text == "What's your favorite song" ||
        text == "What is your favorite song") {
      reply = "My favorite song is 'The Scientist' by Coldplay!";
    } else if (text == "What is your favorite game?" ||
        text == "What's your favorite game?" ||
        text == "What's your favorite game" ||
        text == "What is your favorite game") {
      reply = "My favorite game is Valorant!";
    } else if (text == "What is your favorite book?" ||
        text == "What's your favorite book?" ||
        text == "What's your favorite book" ||
        text == "What is your favorite book") {
      reply = "My favorite book is Harry Potter and the Philosopher's Stone!";
    } else if (text == "What is your favorite animal?" ||
        text == "What's your favorite animal?" ||
        text == "What's your favorite animal" ||
        text == "What is your favorite animal") {
      reply = "My favorite animal is a dog!";
    } else if (text == "What is your favorite sport?" ||
        text == "What's your favorite sport?" ||
        text == "What's your favorite sport" ||
        text == "What is your favorite sport") {
      reply = "My favorite sport is Basketball!";
    } else if (text == "What is your favorite country?" ||
        text == "What's your favorite country?" ||
        text == "What's your favorite country" ||
        text == "What is your favorite country") {
      reply = "My favorite country is Turkey!";
    } else if (text == "What is your favorite city?" ||
        text == "What's your favorite city?" ||
        text == "What's your favorite city" ||
        text == "What is your favorite city") {
      reply = "My favorite city is Istanbul!";
    } else if (text == "What is your favorite place?" ||
        text == "What's your favorite place?" ||
        text == "What's your favorite place" ||
        text == "What is your favorite place") {
      reply = "My favorite place is my home!";
    } else if (text == "What is your favorite season?" ||
        text == "What's your favorite season?" ||
        text == "What's your favorite season" ||
        text == "What is your favorite season") {
      reply = "My favorite season is summer!";
    } else if (text == "What is your favorite holiday?" ||
        text == "What's your favorite holiday?" ||
        text == "What's your favorite holiday" ||
        text == "What is your favorite holiday") {
      reply = "My favorite holiday is Christmas!";
    } else if (text == "What is your favorite drink?" ||
        text == "What's your favorite drink?" ||
        text == "What's your favorite drink" ||
        text == "What is your favorite drink") {
      reply = "My favorite drink is water!";
    } else if (text == "What is your favorite fruit?" ||
        text == "What's your favorite fruit?" ||
        text == "What's your favorite fruit" ||
        text == "What is your favorite fruit") {
      reply = "My favorite fruit is apple!";
    } else if (text == "What is your favorite vegetable?" ||
        text == "What's your favorite vegetable?" ||
        text == "What's your favorite vegetable" ||
        text == "What is your favorite vegetable") {
      reply = "My favorite vegetable is potato!";
    } else if (text == "What is your favorite flower?" ||
        text == "What's your favorite flower?" ||
        text == "What's your favorite flower" ||
        text == "What is your favorite flower") {
      reply = "My favorite flower is rose!";
    } else if (text == "What is your favorite car?" ||
        text == "What's your favorite car?" ||
        text == "What's your favorite car" ||
        text == "What is your favorite car") {
      reply = "My favorite car is Tesla!";
    } else if (text == "What is your favorite brand?" ||
        text == "What's your favorite brand?" ||
        text == "What's your favorite brand" ||
        text == "What is your favorite brand") {
      reply = "My favorite brand is Apple!";
    } else if (text == "What is your favorite phone?" ||
        text == "What's your favorite phone?" ||
        text == "What's your favorite phone" ||
        text == "What is your favorite phone") {
      reply = "My favorite phone is iPhone!";
    } else if (text == "What is your favorite laptop?" ||
        text == "What's your favorite laptop?" ||
        text == "What's your favorite laptop" ||
        text == "What is your favorite laptop") {
      reply = "My favorite laptop is MacBook!";
    } else if (text == "What is your favorite computer?" ||
        text == "What's your favorite computer?" ||
        text == "What's your favorite computer" ||
        text == "What is your favorite computer") {
      reply = "My favorite computer is MacBook!";
    } else if (text == "who is the best software developer" ||
        text == "who is the best software developer?" ||
        text == "who is the best software developer? " ||
        text == "en iyi yazılımcı kim" ||
        text == "who is the best software developer ") {
      reply = "absolutely Mehmet Utku Meşe!";
    } else if (text == "yemeğim nerede") {
      reply = "yemeğiniz hazırlanıyor";
    } else if (text == "müşteri temsilcisi") {
      reply = "müşteri temsilcisi aranıyor";
    }

    final message = ChatMessage(
      text: reply,
      sender: widget.name,
      color: widget.color,
    );
    setState(() {
      _messages.insert(0, message);
    });

    _controller.clear();
  }

  Widget _buildTextComposer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                autofocus: true,
                onSubmitted: ((value) async {
                  _sendMessage(value);
                  await Future.delayed(const Duration(seconds: 1));
                  _aiMessage(value, widget.name);
                }),
                controller: _controller,
                decoration: const InputDecoration.collapsed(
                  hintText: "Send a message",
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () async {
                _sendMessage(_controller.text);
                await Future.delayed(const Duration(seconds: 1));
                _aiMessage(_controller.text, widget.name);
              },
            )
          ],
        ).px16(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.name),
          centerTitle: true,
          backgroundColor: widget.color),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                reverse: true,
                padding: Vx.m12,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _messages[index].py4();
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: context.cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }
}
