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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/Question.png',
              height: 500,
              width: 800,
            ),
            const SizedBox(height: 50),
            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('Enter pressed!');
                Navigator.pushNamed(context, '/home');
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
