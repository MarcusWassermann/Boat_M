import 'package:boat_m/login_page/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:boat_m/favorite_page/favorite_page.dart';
import 'package:boat_m/registration_page/registration_screen.dart';
import 'package:boat_m/second_page/second_screen.dart';

/// Widget für den Inhalt des App-Drawers.
class DrawerContent extends StatelessWidget {
  final List<int> favoritenListe;

  const DrawerContent({super.key, required this.favoritenListe});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 224, 233, 241),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 105, 192),
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.white, // Weißer Text
                  fontSize: 24,
                ),
              ),
            ),
            // Suche
            _buildListTile(
              icon: Icons.search,
              title: 'Suche',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
            ),
            // Nachrichten
            _buildListTile(
              icon: Icons.mail,
              title: 'Nachrichten',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
            // Favoriten
            _buildListTile(
              icon: Icons.favorite,
              title: 'Favoriten',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FavoritesPage(favoritenListe: favoritenListe),
                  ),
                );
              },
            ),
            // Anzeige aufgeben
            _buildListTile(
              icon: Icons.add,
              title: 'Anzeige aufgeben',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationScreen(),
                  ),
                );
              },
            ),
            // Meine Anzeigen
            _buildListTile(
              icon: Icons.list,
              title: 'Meine Anzeigen',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
            // Einstellungen
            _buildListTile(
              icon: Icons.settings,
              title: 'Einstellungen',
              onTap: () {
                // Navigieren zu EinstellungenScreen
              },
            ),
            // Hilfe
            _buildListTile(
              icon: Icons.help,
              title: 'Hilfe',
              onTap: () {
                // Navigieren zu HilfeScreen
              },
            ),
            // Login
            _buildListTile(
              icon: Icons.login,
              title: 'Login',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
