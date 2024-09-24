import 'package:flutter/material.dart';
import '../widgets/logo.dart';
import '../widgets/login_card.dart';
import '../widgets/footer_msg.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}