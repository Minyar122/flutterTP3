import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () {
                print("search button pressed!");
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("arrow baack button pressed!");
              },
              icon: Icon(Icons.arrow_back_ios)),
        ],
      ),
      body: Column(
        children: [
          const Text(
            "What is your favorite color?",
            style: TextStyle(
                fontSize: 20), // Ajustez la taille du texte si nécessaire
          ),
          const SizedBox(height: 20), // Espacement entre les widgets
          ElevatedButton(
            onPressed: () {
              // Action lorsque le bouton rouge est pressé
              print("Red selected");
            },
            child: const Text("Red"),
          ),
          ElevatedButton(
            onPressed: () {
              // Action lorsque le bouton rose est pressé
              print("Pink selected");
            },
            child: const Text("Pink"),
          ),
        ],
      ),
    );
  }
}
