import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<int> favorites = [];

  void toggleFavorite(int id) {
    if (favorites.contains(id)) {
      favorites.remove(id);
    } else {
      favorites.add(id);
    }
    notifyListeners();
  }

  bool isFavorite(int id) {
    return favorites.contains(id);
  }
}
