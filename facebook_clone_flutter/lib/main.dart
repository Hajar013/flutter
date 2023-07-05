import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/game.dart';
import 'TabNavigation.dart';
import 'calls.dart';
import 'saved.dart';
import 'signUp.dart';
import 'Login.dart';
import 'myAnimation.dart';
import 'IntroScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDSGYpEhfeMXc4UVW5xVp2fXKbG4Hngqvg",
        projectId: "facebook-391216",
        messagingSenderId: "1046459431880",
        appId: "1:1046459431880:web:5ec57631f1683ce7439efd"),
  );
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  late String email;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData.dark(),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext ctx) => MyAnimation(),
        '/signUp': (BuildContext ctx) => signUp(),
        '/introScreen': (BuildContext ctx) => IntroScreen(email: email,),
        '/login': (BuildContext ctx) => Login(),
        '/tabNavigation': (BuildContext ctx) => TabNavigation(),
        '/saved': (BuildContext ctx) => Saved(),
        '/Calls': (BuildContext ctx) => Calls(),
        '/game':(BuildContext ctx) => Game()
      },
    );
  }
}
