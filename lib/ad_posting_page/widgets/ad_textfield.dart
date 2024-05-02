// ad_text_field.dart
import 'package:flutter/material.dart';

class AdTextField extends StatelessWidget {
  final TextEditingController controller;

  const AdTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          labelText: 'Anzeigentext',
          border: OutlineInputBorder(),
        ),
        maxLines: null,
      ),
    );
  }
}
