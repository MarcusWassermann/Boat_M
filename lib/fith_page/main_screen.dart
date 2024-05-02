// ignore_for_file: library_private_types_in_public_api

import 'dart:math';
import 'package:boat_m/catergorie_page.dart/categorie_page.dart';
import 'package:flutter/material.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';
import 'package:boat_m/themes/background_colors.dart';
import 'package:boat_m/my_ad_page/myads.dart';
import 'package:boat_m/received_message_page/received_message_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            center: Alignment.center,
            startAngle: 0,
            endAngle: pi * 2,
            colors: BackgroundColors.blueShades,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(
                  context,
                  text: 'Anzeige aufgeben',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const CategoryPage(), // Zur Kategorieseite navigieren
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _buildButton(
                  context,
                  text: 'Meine Anzeigen',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyAdsScreen(myAds: []),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _buildButton(
                  context,
                  text: 'Empfangene Nachrichten',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ReceivedMessagesPage(receivedMessages: []),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String text, required VoidCallback? onPressed}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
