import 'package:flutter/material.dart';

class ImageUploadButton extends StatelessWidget {
  const ImageUploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.upload),
      label: const Text('Upload Image'),
    );
  }
}
