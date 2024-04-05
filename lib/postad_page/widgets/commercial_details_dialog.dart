import 'package:flutter/material.dart';

class CommercialDetailsDialog extends StatefulWidget {
  final Function(String, String, String, String, String) onSave;

  const CommercialDetailsDialog({super.key, required this.onSave});

  @override
  // ignore: library_private_types_in_public_api
  _CommercialDetailsDialogState createState() =>
      _CommercialDetailsDialogState();
}

class _CommercialDetailsDialogState extends State<CommercialDetailsDialog> {
  String _companyName = '';
  String _companyLocation = '';
  String _companyStreet = '';
  String _companyPhoneNumber = '';
  String _companyEmail = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Gewerbliche Anbieterdetails'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Firmenname'),
            onChanged: (value) => _companyName = value,
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Ort'),
            onChanged: (value) => _companyLocation = value,
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Straße'),
            onChanged: (value) => _companyStreet = value,
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Telefonnummer'),
            onChanged: (value) => _companyPhoneNumber = value,
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'E-Mail'),
            onChanged: (value) => _companyEmail = value,
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Abbrechen'),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onSave(_companyName, _companyLocation, _companyStreet,
                _companyPhoneNumber, _companyEmail);
            Navigator.of(context).pop();
          },
          child: const Text('Speichern'),
        ),
      ],
    );
  }
}
