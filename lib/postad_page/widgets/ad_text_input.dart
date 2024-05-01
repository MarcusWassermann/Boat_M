// ad_text_input.dart
import 'package:flutter/material.dart';

class AdTextInput extends StatelessWidget {
  final TextEditingController controller;

  const AdTextInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      width: double.infinity,
      child: TextField(
        controller: controller,
        maxLines: 5,
        style: const TextStyle(fontSize: 11.0),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Geben Sie hier Ihre Anzeigentext ein',
          contentPadding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
        ),
      ),
    );
  }
}
