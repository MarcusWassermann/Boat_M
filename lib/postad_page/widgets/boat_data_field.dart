import 'package:flutter/material.dart';
import 'package:boat_m/data/database_repository.dart';

class BoatDataFields extends StatefulWidget {
  const BoatDataFields({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BoatDataFieldsState createState() => _BoatDataFieldsState();
}

class _BoatDataFieldsState extends State<BoatDataFields> {
  final TextEditingController _boatNameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _lengthController = TextEditingController();
  final TextEditingController _conditionController = TextEditingController();
  final TextEditingController _engineTypeController = TextEditingController();
  final TextEditingController _fuelController = TextEditingController();
  final TextEditingController _powerController = TextEditingController();
  final TextEditingController _sailCountController = TextEditingController();
  final TextEditingController _sailAreaController = TextEditingController();

  @override
  void dispose() {
    _boatNameController.dispose();
    _priceController.dispose();
    _brandController.dispose();
    _modelController.dispose();
    _yearController.dispose();
    _lengthController.dispose();
    _conditionController.dispose();
    _engineTypeController.dispose();
    _fuelController.dispose();
    _powerController.dispose();
    _sailCountController.dispose();
    _sailAreaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBoatDataField('Name des Boots', _boatNameController, 12.0),
        _buildBoatDataField('Preis', _priceController, 12.0),
        _buildBoatDataField('Marke', _brandController, 12.0),
        _buildBoatDataField('Modell', _modelController, 12.0),
        _buildBoatDataField('Baujahr', _yearController, 12.0),
        _buildBoatDataField('Länge', _lengthController, 12.0),
        _buildBoatDataField('Zustand', _conditionController, 12.0),
        _buildBoatDataField('Motorart', _engineTypeController, 12.0),
        _buildBoatDataField('Kraftstoff', _fuelController, 12.0),
        _buildBoatDataField('Leistung', _powerController, 12.0),
        _buildBoatDataField('Segel Anzahl', _sailCountController, 12.0),
        _buildBoatDataField('Segel qm', _sailAreaController, 12.0),
        ElevatedButton(
          onPressed: () {
            _saveData();
          },
          child: const Text('Daten speichern'),
        ),
      ],
    );
  }

  Future<void> _saveData() async {
    await DatabaseRepository.instance.insertData(
      marke: _brandController.text,
      modell: _modelController.text,
      auswahl: _boatNameController.text,
      liegeplatz: '', //  entsprechenden Wert hinzu
      baujahrvon: int.tryParse(_yearController.text) ?? 0,
      baujahrbis: 0, // Fügen Sie den entsprechenden Wert hinzu
      laengmin: double.tryParse(_lengthController.text) ?? 0.0,
      laengmax: 0.0, //  entsprechenden Wert hinzu
      preisvon: double.tryParse(_priceController.text) ?? 0.0,
      preisbis: 0.0, //  entsprechenden Wert hinzu
      motorart: _engineTypeController.text,
      kraftstoff: _fuelController.text,
      leistungvon: int.tryParse(_powerController.text) ?? 0,
      segelanzahl: int.tryParse(_sailCountController.text) ?? 0,
      segelqm: double.tryParse(_sailAreaController.text) ?? 0.0,
    );
  }

  Widget _buildBoatDataField(
      String label, TextEditingController controller, double fontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: fontSize),
        ),
        const SizedBox(height: 6.0),
        TextField(
          controller: controller,
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
