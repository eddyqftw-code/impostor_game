import 'package:flutter/material.dart';
import 'game_screen.dart';

void main() {
  runApp(const ImpostorWebApp());
}

class ImpostorWebApp extends StatelessWidget {
  const ImpostorWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Impostor Game Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: const GameScreen(),
    );
  }
}
