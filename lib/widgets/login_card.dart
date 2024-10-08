import 'package:flutter/material.dart';
import './socials.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'Hello mamsir',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            )
          ),
          const Text(
            "Sign into your account",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500
            )
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Email ID*",
              labelStyle: TextStyle(
                fontSize: 14
              ),
              suffixIcon: Icon(
                Icons.email,
                // color: Color.fromARGB(255, 3, 121, 142),
                color: Color.fromARGB(255, 113, 66, 46),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Password*",
              labelStyle: TextStyle(
                fontSize: 14
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
                // color: Color.fromARGB(255, 3, 121, 142),
                color: Color.fromARGB(255, 113, 66, 46),

              ),
            ),
            obscureText: true,
          ),
    
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              textAlign: TextAlign.end,
              "Forgot your password?",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
    
          const SizedBox(
            height: 50,
          ),
    
          Container(
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(82, 192, 192, 192),
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {}, 
              
              style: ElevatedButton.styleFrom(
                elevation: 3,
                
                // backgroundColor: const Color.fromARGB(255,10,175,158),
                backgroundColor: const Color.fromARGB(255, 186, 160, 125),
                foregroundColor: Colors.white, // This controls the text color
            
              ),
              child: const Text("Login"),
            ),
          ),
    
          const SizedBox(height: 30,),
    
          const Text(
            "Or Login using social media",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 139, 139, 139),
            ),
          ),
    
          const SizedBox(height: 30,),
    
          const Socials(),
    
          const SizedBox(height: 10,),
    
        ],
      ),
    );
  }
}

