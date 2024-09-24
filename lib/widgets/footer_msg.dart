import 'package:flutter/material.dart';

class FooterMsg extends StatelessWidget {
  final String msg;
  final String question;
  final String routeName;

  const FooterMsg({
    super.key,
    required this.msg,
    required this.question,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      
      children: [
        Text(
          "$question ",
          style: const TextStyle(
            fontWeight: FontWeight.w500
          )
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, routeName);
          },
          
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),

          child: Text(
            msg,
            style: const TextStyle(
              color: Color.fromARGB(255, 10, 148, 134),
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 10, 148, 134),
              decorationThickness: 2,
            ),
          ),
        )
      ],
    );
  }
}