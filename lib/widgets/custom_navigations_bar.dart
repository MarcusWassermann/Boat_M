import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
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
      onTap: (index) {
        if (index == 0) {
          // Wenn auf 'Home' geklickt wird, navigiere zum Home-Screen
          Navigator.pushNamed(context, '/home');
        } else if (index == 1) {
          // Wenn auf 'Search' geklickt wird, navigiere zum Second-Screen
          Navigator.pushNamed(context, '/second');
        }
        // Aufruf der übergebenen Funktion
        onItemTapped(index);
      },
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.6),
    );
  }
}
