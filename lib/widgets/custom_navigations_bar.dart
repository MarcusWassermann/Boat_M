import 'dart:math';

import 'package:flutter/material.dart';
import 'package:boat_m/themes/background_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  Color _getRandomColor(List<Color> colors) {
    final random = Random();
    return colors[random.nextInt(colors.length)];
  }

  @override
  Widget build(BuildContext context) {
    final colors = BackgroundColors.blueShades;

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          label: 'Search',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped, // Die übergebene Funktion aufrufen
      backgroundColor: _getRandomColor(colors),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.6),
    );
  }
}
