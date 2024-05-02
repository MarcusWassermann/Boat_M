// MainContainerWidget.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:boat_m/third_page/favorite_provider.dart';

class MainContainerWidget extends StatelessWidget {
  final int id;

  const MainContainerWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final bool isFavorite = favoriteProvider.favoriteIds.contains(id);

    return Container(
      color: const Color.fromARGB(200, 234, 233, 228),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Main Container',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : null,
                        ),
                        onPressed: () {
                          favoriteProvider.toggleFavorite(id);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Dies ist der Inhalt des Containers.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
