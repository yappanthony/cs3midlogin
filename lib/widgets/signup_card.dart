import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './socials.dart';

class SignUpCard extends StatelessWidget {
  const SignUpCard({super.key});

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
            "Create Account",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16
            )
          ),

          const SizedBox(
            height: 10,
          ),

          const TextField(
            decoration: InputDecoration(
              labelText: "Firstname*",
              labelStyle: TextStyle(
                fontSize: 14
              ),
              suffixIcon: Icon(
                FontAwesomeIcons.solidUser,
                // color: Color.fromARGB(255, 3, 121, 142),
                color: Color.fromARGB(255, 186, 160, 125),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          const TextField(
            decoration: InputDecoration(
              labelText: "Lastname*",
              labelStyle: TextStyle(
                fontSize: 14
              ),
              suffixIcon: Icon(
                FontAwesomeIcons.solidUser,
                // color: Color.fromARGB(255, 3, 121, 142),
                color: Color.fromARGB(255, 186, 160, 125),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          const TextField(
            decoration: InputDecoration(
              labelText: "Email Address*",
              labelStyle: TextStyle(
                fontSize: 14
              ),
              suffixIcon: Icon(
                FontAwesomeIcons.solidUser,
                // color: Color.fromARGB(255, 3, 121, 142),
                color: Color.fromARGB(255, 186, 160, 125),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          const TextField(
            decoration: InputDecoration(
              labelText: "Username*",
              labelStyle: TextStyle(
                fontSize: 14
              ),
              suffixIcon: Icon(
                FontAwesomeIcons.solidUser,
                // color: Color.fromARGB(255, 3, 121, 142),
                color: Color.fromARGB(255, 186, 160, 125),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
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
                color: Color.fromARGB(255, 186, 160, 125),

              ),
            ),
            obscureText: true,
          ),

          const SizedBox(
            height: 10,
          ),

          const TextField(
            decoration: InputDecoration(
              labelText: "Confirm Password*",
              labelStyle: TextStyle(
                fontSize: 14
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
                // color: Color.fromARGB(255, 3, 121, 142),
                color: Color.fromARGB(255, 186, 160, 125),

              ),
            ),
            obscureText: true,
          ),
    
          Container(
            width: 250,
            padding: const EdgeInsets.only(top: 30, bottom: 30),
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
                
                // backgroundColor: const Color.fromARGB(255, 25, 119, 155),
                backgroundColor: const Color.fromARGB(255, 113, 66, 46),
                foregroundColor: Colors.white, // This controls the text color
            
              ),
              child: const Text("Register Now"),
            ),
          ),
    
    
          const Text(
            "Or Register using social media",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 139, 139, 139),
            ),
          ),
    
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Socials(),
          ),
    
        ],
      ),
    );
  }
}