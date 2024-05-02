import 'dart:math';
import 'package:boat_m/themes/background_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    Color? backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            center: Alignment.center,
            startAngle: 0,
            endAngle: pi * 2,
            colors: BackgroundColors.blueShades,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          onTap: (index) {
            if (index == 0) {
              // Wenn der Pfeil zurück ausgewählt wurde
              Navigator.of(context).pop();
            } else if (index == 1) {
              // Wenn der Home-Icon ausgewählt wurde
              Navigator.pushNamed(context, '/home');
            } else if (index == 2) {
              // Wenn die Suche ausgewählt wurde
              if (kDebugMode) {
                print('Search icon tapped');
              } // Debugging-Ausgabe hinzufügen
              Navigator.pushNamed(context, '/second');
            }
          },
          currentIndex: selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}
