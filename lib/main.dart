import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatLoom app',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: WelcomeScreen.screenRoute ,
      routes: {
        WelcomeScreen.screenRoute  : (context) =>WelcomeScreen(),
        SignInScreen.screenRoute: (context) =>SignInScreen(),
        RegistrationScreen.screenRoute: (context) =>RegistrationScreen(),
        ChatScreen.screenRoute : (context) =>ChatScreen(),
      },

    );
  }
}

