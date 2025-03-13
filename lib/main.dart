import 'package:chat_app/auth/auth.dart';
import 'package:chat_app/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // if (snapshot.connectionState == ConnectionState.waiting) {
          //   // show progress indicator
          //   // show a splash screen
          // }
          if (snapshot.hasData) {
            return HomeScreen();
          }

          return AuthScreen();
        },
      ),
    ),
  );
}