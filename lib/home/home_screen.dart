import 'dart:math';
import 'package:flutter/material.dart';
import 'package:boat_m/themes/background_colors.dart'; // Importieren der Farben
import 'package:boat_m/home/widgets/drawer_content.dart'; // Importieren des DrawerContent-Widgets
import 'package:boat_m/home/widgets/home_body.dart'; // Importieren des HomeBody-Widgets

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> blueShades = BackgroundColors.blueShades.toList();
    blueShades.shuffle(Random());

    return Scaffold(
      backgroundColor: blueShades.first,
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            center: const Alignment(0.0, 0.0),
            startAngle: 0.0,
            endAngle: pi * 2.0,
            colors: blueShades,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: const Text(''),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            const Expanded(
              child: HomeBody(),
            ),
          ],
        ),
      ),
      drawer: const DrawerContent(favoritenListe: [],),
    );
  }
}
