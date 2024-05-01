import 'dart:math';
import 'package:boat_m/my_ad_page/myads.dart';
import 'package:boat_m/postad_page/postad_screen.dart';
import 'package:boat_m/received_message_page/received_message_screen.dart';
import 'package:boat_m/themes/background_colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
                        builder: (context) => const PostAdScreen(),
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              center: Alignment.center,
              startAngle: 0,
              endAngle: pi * 2,
              colors: BackgroundColors.blueShades,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            onTap: (int index) {
              switch (index) {
                case 0:
                  // Navigation zum Home-Screen
                  Navigator.pushNamed(context, '/home_screen');
                  break;
                case 1:
                  // Navigation zum vorherigen Bildschirm
                  Navigator.pop(context);
                  break;
                case 2:
                  // Navigation zum Second-Screen
                  Navigator.pushNamed(context, '/second_screen');
                  break;
              }
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
          ),
        ),
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
