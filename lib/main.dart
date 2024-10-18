import 'package:flutter/material.dart';
import 'package:fttp3/acceuil.dart'; // Assurez-vous que ce chemin est correct et que le fichier existe
import 'package:fttp3/homepage.dart'; // Assurez-vous que ce chemin est correct et que le fichier existe

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon Quiz",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Acceuil(), // Page d'accueil
        '/home': (context) => const HomePage(), // Page Home
      },
    );
  }
}
