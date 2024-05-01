import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  const TextFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blueAccent, width: 1.0),
      ),
      child: TextField(
        controller: controller,
        readOnly: true,
        maxLines: null,
        decoration: const InputDecoration(
          hintText: 'Anzeigentext',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
