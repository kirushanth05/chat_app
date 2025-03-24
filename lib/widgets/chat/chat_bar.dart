import 'package:flutter/material.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({
    super.key,
    required this.name,
    required this.lastMessage,
    required this.imageUrl,
    required this.time,
  });

  final String name;
  final String lastMessage;
  final String imageUrl;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: [
            CircleAvatar(radius: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              width: MediaQuery.of(context).size.width * 0.77,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        time.hour.toString() + ':' + time.minute.toString(),
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    lastMessage,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}