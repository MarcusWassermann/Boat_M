import 'package:flutter/material.dart';
class BoatDataWidget extends StatefulWidget {
  
  const BoatDataWidget({super.key});

  @override
  State<BoatDataWidget> createState() => _BoatDataWidgetState();
}

class _BoatDataWidgetState extends State<BoatDataWidget> {
  bool _isExpanded = false;

  /// Funktion zum Erstellen der Liste von Bootsdaten.
  List<Widget> _buildBoatData() {
    return [
      const ListTile(
        title: Text(
          'Brand',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Model',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Location',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Year',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Engine Type',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Fuel',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Sail Count: ',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Sail Area: ',
          style: TextStyle(fontSize: 16),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        elevation: 1,
        expandedHeaderPadding: EdgeInsets.zero,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _isExpanded = isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return const ListTile(
                title: Text(
                  'Boat Data',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 16),
              );
            },
            body: Column(
              children: _buildBoatData(),
            ),
            isExpanded: _isExpanded,
          ),
        ],
      ),
    );
  }
}
