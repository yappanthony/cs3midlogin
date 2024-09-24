import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/logo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 195, 157, 108), Color.fromARGB(255, 113, 66, 46)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(isWhite: true,),

            const SizedBox(height: 100),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    }, 
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 113, 66, 46), // This controls the text color
                    
                      ),
                    child: const Text("Login"),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    }, 
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 113, 66, 46), // This controls the text color
                    
                    ),
                    child: const Text("Register Now"),
                  ),
                ),

              ],
            ),

            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                "Now! Quick Login Use Touch ID",
                style: TextStyle(
                  color: Colors.white
                ),
              )
            ),

            const Icon(
              FontAwesomeIcons.fingerprint,
              color: Color.fromARGB(255, 231, 231, 231),
              size: 50,
            ),

            const SizedBox(height: 20),

            const Text(
              "Use Touch ID",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            )

          ],
        )
      )
    );
  }
}