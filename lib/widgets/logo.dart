import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final bool isWhite;
  const Logo({
    super.key,
    required this.isWhite,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/cooked-coffee.png',
            height: 100,
          ),
          Text(
            "SPILT COFFEE",
            style: TextStyle(
              color: isWhite ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 22
            )
          )
        ],
      ),
    );
  }
}