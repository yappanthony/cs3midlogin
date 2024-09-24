import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/signup.dart';
import './screens/home.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
        '/home': (context) => const Home(),
      },
    );
  }
}



