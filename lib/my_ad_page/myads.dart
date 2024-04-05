import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  final List<String> myAds;

  const MyAdsScreen({super.key, required this.myAds});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const SizedBox.shrink(), // Leerer Titel
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: Image.asset(
              'assets/logo-transparent-png.png',
              fit: BoxFit.contain,
              height: 56, // Höhe des Logos
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: myAds.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(myAds[index]),
                  onTap: () {
                    // Aktionen ausführen, z.B. Anzeige öffnen
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                // Aktion für die Home-Seite hier einfügen
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // Aktion für die Suchseite hier einfügen
              },
            ),
          ],
        ),
      ),
    );
  }
}
