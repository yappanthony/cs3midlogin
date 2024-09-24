import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Icon(
            Icons.coffee,
            size: 60,
          ),
          Text(
            "HOY, KAPE TAYO!",
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