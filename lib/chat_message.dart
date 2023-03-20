import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {super.key,
      required this.text,
      required this.sender,
      required this.color});

  final String text;
  final String sender;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return sender == "Me"
        ? Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  child: Text(sender[0]),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(sender, style: Theme.of(context).textTheme.subtitle1),
                    Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Text(text),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(sender, style: Theme.of(context).textTheme.subtitle1),
                    Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Text(text),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12.0),
              CircleAvatar(
                backgroundColor: color,
                child: Text(sender[0].toUpperCase()),
              ),
            ],
          );
  }
}
