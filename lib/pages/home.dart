import 'package:chat_app/widgets/chat/chat_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChaTapp'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChatBar(
              name: 'Whitman Chat',
              time: DateTime.now(),
              lastMessage: 'Sarah: For tn: 4 order',
              imageUrl: '',
            ),
            ChatBar(
              name: 'Whitman Chat',
              time: DateTime.now(),
              lastMessage: 'Sarah: For tn: 4 order',
              imageUrl: '',
            ),
            ChatBar(
              name: 'Whitman Chat',
              time: DateTime.now(),
              lastMessage: 'Sarah: For tn: 4 order',
              imageUrl: '',
            ),
            ChatBar(
              name: 'Whitman Chat',
              time: DateTime.now(),
              lastMessage: 'Sarah: For tn: 4 order',
              imageUrl: '',
            ),
          ],
        ),
      ),
    );
  }
}