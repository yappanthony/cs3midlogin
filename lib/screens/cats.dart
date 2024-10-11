import 'package:flutter/material.dart';
import '../widgets/cat_card.dart';
import '../services/apicats.dart';
// import '../widgets/bottom_navigation.dart';

class Cats extends StatefulWidget {
  const Cats({super.key});

  @override
  State<Cats> createState() => _CatsState();
}

class _CatsState extends State<Cats> {
  
  List cats = [
    {
      "name": "Oliver",
      "breed": "Maine Coon",
      "personality": "Ever curious and always on the prowl, Explorers love to explore their surroundings and are often found perched on high places, surveying their domain.",
    },
    {
      "name": "Luna",
      "breed": "Ragdoll",
      "personality": "Affectionate and cuddly, Lap Cats adore human company and often seek out laps to curl up in.",
    },
    {
      "name": "Leo",
      "breed": "Bengal",
      "personality": "Attention-seeking and expressive, Drama Queens love to make a scene, whether it's with a loud meow or a dramatic pose.",
    },
    {
      "name": "Willow",
      "breed": "Scottish Fold",
      "personality": "Self-sufficient and aloof, Independents prefer their own company and may not be as affectionate as other cats.",
    },
    {
      "name": "Tiger",
      "breed": "Siamese",
      "personality": "Instinctive and agile, Hunters love to chase and pounce on toys and may even try to catch insects or small animals.",
    },
    {
      "name": "Mia",
      "breed": "Sphynx",
      "personality": "Talkative and vocal, Chatterboxes love to meow and purr, often communicating their needs and desires through sound.",
    },
    {
      "name": "Charlie",
      "breed": "British Shorthair",
      "personality": "Lazy and relaxed, Couch Potatoes enjoy lounging around and are often found napping in sunny spots.",
    },
    {
      "name": "Loki",
      "breed": "Norwegian Forest Cat",
      "personality": "Mischievous and energetic, Playful Pranksters love to play tricks and can often be found knocking things over or hiding toys.",
    },
    {
      "name": "Shadow",
      "breed": "American Shorthair",
      "personality": "Nocturnal and energetic at night, Night Owls are often quiet and sleepy during the day.",
    },
    {
      "name": "Missy",
      "breed": "Persian",
      "personality": "Discriminating and picky, Food Critics are always on the lookout for the best treats and may turn up their noses at anything less than perfect.",
    },
  ];

  @override
  void initState() {
    super.initState();
    getCats();
  }

  void getCats() async {
    final result = await CatAPI().getCats();
    setState(() {
      for (var i = 0; i < result.length; i++) {
        cats[i]['url'] = result[i]['url'];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
        ),
        centerTitle: true,
        title: const Text("Meet the cats"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20,30,20,50),
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 195, 157, 108), Color.fromARGB(255, 113, 66, 46)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              for (var cat in cats) CatCard(cat: cat),
            ]
          ),

        ),
      ),
    );
  }
}