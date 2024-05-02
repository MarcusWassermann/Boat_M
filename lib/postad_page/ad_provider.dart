import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Die Ad-Klasse
class Ad {
  final String id;
  final String title;
  final double price;

  Ad({required this.id, required this.title, required this.price});
}

// Die AdProvider-Klasse
class AdProvider with ChangeNotifier {
  final List<Ad> _ads = [];

  List<Ad> get ads => _ads;

  void addAd(Ad ad) {
    _ads.add(ad);
    if (kDebugMode) {
      print('Ad added: ${ad.title}');
    }
    notifyListeners();
  }

  void removeAd(String id) {
    _ads.removeWhere((ad) {
      if (ad.id == id) {
        if (kDebugMode) {
          print('Ad removed: ${ad.title}');
        }
        return true;
      }
      return false;
    });
    notifyListeners();
  }
}

// Die Widget-Klasse, um Anzeigen anzuzeigen
class AdDisplay extends StatelessWidget {
  final AdProvider adProvider;

  const AdDisplay({super.key, required this.adProvider});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: adProvider.ads.length,
      itemBuilder: (context, index) {
        final ad = adProvider.ads[index];
        return ListTile(
          title: Text(ad.title),
          subtitle: Text('\$${ad.price.toStringAsFixed(2)}'),
        );
      },
    );
  }
}
