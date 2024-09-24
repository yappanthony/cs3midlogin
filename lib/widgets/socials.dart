import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            FontAwesomeIcons.facebookF,
            color: Color.fromARGB(255, 18, 95, 159),
          ),
          const Icon(
            FontAwesomeIcons.twitter,
            color: Color.fromARGB(255, 41, 154, 247),

          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            color: Colors.red,
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            icon: const Icon(FontAwesomeIcons.googlePlusG),
          ),
        ],
      ),
    );
  }
}