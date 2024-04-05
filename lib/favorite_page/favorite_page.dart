import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final List<Widget> favoritenListe;

  const FavoritesPage({super.key, required this.favoritenListe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: SizedBox(
          height: 56,
          child: Image.asset(
            'assets/logo-transparent-png.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: favoritenListe.length,
        itemBuilder: (BuildContext context, int index) {
          return favoritenListe[index];
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Aktion für die Home-Seite hier einfügen
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Aktion für die Suchseite hier einfügen
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
