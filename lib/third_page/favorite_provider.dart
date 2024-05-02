// FavoriteProvider.dart
import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  final Set<int> _favoriteIds = {};

  Set<int> get favoriteIds => _favoriteIds;

  void toggleFavorite(int id) {
    if (_favoriteIds.contains(id)) {
      _favoriteIds.remove(id);
    } else {
      _favoriteIds.add(id);
    }
    notifyListeners();
  }
}
