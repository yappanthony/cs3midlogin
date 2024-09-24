import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
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
          const Text(
            "SPILT COFFEE",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22
            )
          )
        ],
      ),
    );
  }
}