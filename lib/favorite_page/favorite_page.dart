import 'package:flutter/material.dart';
import 'package:boat_m/third_page/widgets/main_container.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key, required this.favoritenListe});

  final List<int> favoritenListe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoriten'),
      ),
      body: ListView.builder(
        itemCount: favoritenListe.length,
        itemBuilder: (context, index) {
          int id = favoritenListe[index];
          return MainContainerWidget(id: id);
        },
      ),
    );
  }
}