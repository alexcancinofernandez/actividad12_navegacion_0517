import 'package:flutter/material.dart';
import 'package:myapp/widgets/PantallaEntrenamiento.dart';
import 'package:myapp/widgets/ResultScreen.dart';
import 'package:myapp/widgets/WorkoutSessionScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/', 
      routes: {
        '/': (context) => const WorkoutSessionScreen(),
        '/segunda_pantalla': (context) => const PantallaEntrenamiento(),
        '/tercera_pantalla': (context) => const ResultScreen(),
      },
    );
  }
}
