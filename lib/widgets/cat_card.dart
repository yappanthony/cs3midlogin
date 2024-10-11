import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    super.key,
    required this.cat,
  });

  final Map cat;

  @override
  Widget build(BuildContext context) {
    bool isImgHere = cat['url'] != null;
    return Card(
      color: const Color.fromARGB(255, 224, 218, 209),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: isImgHere 
            ? 
            Image.network(
              cat['url'],
            )
            :
            Image.asset('assets/waiting.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cat['name'],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  cat['breed'],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 110, 110, 110),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  cat['personality'],
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 110, 110, 110),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      )
    );
  }
}