import 'package:flutter/material.dart';
import './widgets/logo.dart';
import './widgets/login_card.dart';
import './widgets/footer_msg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238)
          ),
          child: const Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(),

                  LoginCard(),

                  FooterMsg(),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

