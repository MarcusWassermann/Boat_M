import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white, // Weißer Hintergrund
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: Colors.blueAccent, width: 1.0), // Blauer Rahmen
      ),
      child: const TextField(
        readOnly: true, // Hier wird das Textfeld für Eingaben deaktiviert
        maxLines: null,
        decoration: InputDecoration(
          hintText: 'Anzeigentext',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
