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
                Column(
                  children: [
                    Logo(isWhite: false,),
                              
                    LoginCard(),
                  ],
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FooterMsg(
                  msg: "Register Now", 
                  question: "Don't have an account?",
                  routeName: "/signup"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}