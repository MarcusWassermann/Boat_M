import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:boat_m/third_page/favorite_provider.dart';
import 'package:boat_m/third_page/widgets/main_container.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoriten'),
      ),
      body: ListView.builder(
        itemCount: favoriteProvider.favoriteIds.length,
        itemBuilder: (context, index) {
          int id = favoriteProvider.favoriteIds.elementAt(index);
          return MainContainerWidget(id: id);
        },
      ),
    );
  }
}
