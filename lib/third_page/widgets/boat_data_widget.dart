import 'package:flutter/material.dart';
import 'package:boat_m/data/database_repository.dart';

class BoatDataWidget extends StatefulWidget {
  const BoatDataWidget({super.key});

  @override
  State<BoatDataWidget> createState() => _BoatDataWidgetState();
}

class _BoatDataWidgetState extends State<BoatDataWidget> {
  bool _isExpanded = false;
  Map<String, dynamic>? _boatData;

  @override
  void initState() {
    super.initState();
    _loadData(); // Lade die Daten, wenn das Widget erstellt wird
  }

  Future<void> _loadData() async {
    final data = await DatabaseRepository.instance.getBoatData();
    if (data.isNotEmpty) {
      setState(() {
        _boatData = data.first;
        _isExpanded =
            true; // Hier setzen wir _isExpanded auf true, wenn Daten geladen wurden
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        elevation: 1,
        expandedHeaderPadding: EdgeInsets.zero,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _isExpanded = !_isExpanded;
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
            body: _boatData == null
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      _buildDataRow('Brand', _boatData!['marke']),
                      _buildDataRow('Model', _boatData!['modell']),
                      _buildDataRow('Location', _boatData!['liegeplatz']),
                      _buildDataRow(
                          'Year', _boatData!['baujahrvon'].toString()),
                      _buildDataRow('Engine Type', _boatData!['motorart']),
                      _buildDataRow('Fuel', _boatData!['kraftstoff']),
                      _buildDataRow(
                          'Sail Count', _boatData!['segelanzahl'].toString()),
                      _buildDataRow(
                          'Sail Area', _boatData!['segelqm'].toString()),
                    ],
                  ),
            isExpanded: _isExpanded,
          ),
        ],
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
    return ListTile(
      title: Text(label),
      trailing: Text(value),
    );
  }
}
