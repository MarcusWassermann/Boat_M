import 'package:boat_m/second_page/second_sccreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home/home_screen.dart'; 
import 'themes/custom_theme.dart'; 

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.getTheme(),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
