// lib/screens/main_screen.dart

import 'package:boat_m/my_ad_page/myads.dart';
import 'package:boat_m/postad_page/postad_screen.dart';
import 'package:boat_m/received_message_page/received_message_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const <BottomNavigationBarItem>[
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
    );
  }

  Widget _buildButton(BuildContext context,
      {required String text, required VoidCallback onPressed}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
