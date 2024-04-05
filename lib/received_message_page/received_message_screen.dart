// lib/screens/received_messages_page.dart

import 'package:boat_m/received_message_page/Models/message.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';
import 'package:flutter/material.dart';

class ReceivedMessagesPage extends StatelessWidget {
  final List<Message> receivedMessages;

  const ReceivedMessagesPage({super.key, required this.receivedMessages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: null, // Text in der AppBar entfernen
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: kToolbarHeight),
            child: Image.asset(
              'assets/logo-transparent-png.png',
              fit: BoxFit.contain,
              height: 56,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: receivedMessages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = receivedMessages[index];
                return ListTile(
                  title: Text(message.subject),
                  subtitle: Text(message.sender),
                  onTap: () {
                    // Aktionen ausführen, z.B. Nachricht öffnen
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index) {
          // Aktionen für die ausgewählten Indexe hier einfügen
        },
      ),
    );
  }
}
