import 'package:flutter/material.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';

class MyAdsScreen extends StatelessWidget {
  final List<String> myAds;
  final int _selectedIndex = 0;

  const MyAdsScreen({super.key, required this.myAds});

  @override
  Widget build(BuildContext context) {
    final Color? bottomNavigationBarColor =
        Theme.of(context).bottomNavigationBarTheme.backgroundColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            bottomNavigationBarColor, // Use the same color for the app bar
        title: Image.asset(
          'assets/logo-transparent-png.png',
          fit: BoxFit.contain,
          height: 40,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
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
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    // Aktionen basierend auf dem ausgewählten Index ausführen
  }
}
