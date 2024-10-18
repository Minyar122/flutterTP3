import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quizz App",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        // Centrer tout le contenu du body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image asset
            Image.asset(
              'assets/img/Quiz.png',
              height: 200, // Ajustez la hauteur selon vos besoins
            ),
            const SizedBox(height: 50), // Espacement entre l'image et le bouton
            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('Enter pressed!');
                Navigator.pushNamed(
                    context, '/home'); // Navigation vers la page d'accueil
              },
              child: const Text(
                "Enter App",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
