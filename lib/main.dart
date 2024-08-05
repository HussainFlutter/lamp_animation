import 'package:flutter/material.dart';
import 'package:lamp_animation/living_room.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lamp animation',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LivingRoom(),
    );
  }
}
