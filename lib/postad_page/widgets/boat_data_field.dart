import 'package:flutter/material.dart';

class BoatDataFields extends StatelessWidget {
  const BoatDataFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBoatDataField('Name des Boots', 12.0),
        _buildBoatDataField('Preis', 12.0),
        _buildBoatDataField('Marke', 12.0),
        _buildBoatDataField('Modell', 12.0),
        _buildBoatDataField('Baujahr', 12.0),
        _buildBoatDataField('Länge', 12.0),
        _buildBoatDataField('Zustand', 12.0),
        _buildBoatDataField('Motorart', 12.0),
        _buildBoatDataField('Kraftstoff', 12.0),
        _buildBoatDataField('Leistung', 12.0),
        _buildBoatDataField('Segel Anzahl', 12.0),
        _buildBoatDataField('Segel qm', 12.0),
      ],
    );
  }

  Widget _buildBoatDataField(String label, double fontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: fontSize),
        ),
        const SizedBox(height: 6.0),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Geben Sie hier die Daten ein',
          ),
          style: TextStyle(fontSize: fontSize),
        ),
        const SizedBox(height: 12.0),
      ],
    );
  }
}
