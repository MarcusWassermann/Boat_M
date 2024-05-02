// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class BoatDataWidget extends StatefulWidget {
  const BoatDataWidget({super.key});

  @override
  _BoatDataWidgetState createState() => _BoatDataWidgetState();
}

class _BoatDataWidgetState extends State<BoatDataWidget> {
  final List<Item> _data = generateItems(1);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        elevation: 1,
        expandedHeaderPadding: EdgeInsets.zero,
        children: _data.map<ExpansionPanelRadio>((Item item) {
          return ExpansionPanelRadio(
            value: item,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDataRow('Brand', ''),
                _buildDataRow('Model', ''),
                _buildDataRow('Location', ''),
                _buildDataRow('Year', ''),
                _buildDataRow('Engine Type', ''),
                _buildDataRow('Fuel', ''),
                _buildDataRow('Sail Count', ''),
                _buildDataRow('Sail Area', ''),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Text('$label:'),
          const SizedBox(width: 8),
          Text(value),
        ],
      ),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}
