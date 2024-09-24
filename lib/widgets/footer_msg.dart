import 'package:flutter/material.dart';

class FooterMsg extends StatelessWidget {
  const FooterMsg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            fontWeight: FontWeight.w500
          )
        ),
        Text(
          "Register Now",
          style: TextStyle(
            color: Color.fromARGB(255, 10, 148, 134),
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            decorationColor: Color.fromARGB(255, 10, 148, 134),
            decorationThickness: 2
          )
        )
      ],
    );
  }
}