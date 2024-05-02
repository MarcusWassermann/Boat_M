// ignore_for_file: library_private_types_in_public_api

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadButton extends StatefulWidget {
  const ImageUploadButton({super.key});

  @override
  _ImageUploadButtonState createState() => _ImageUploadButtonState();
}

class _ImageUploadButtonState extends State<ImageUploadButton> {
  File? _image;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: _getImage,
          icon: const Icon(Icons.upload),
          label: const Text('Upload Image'),
        ),
        if (_image != null) Image.file(_image!),
      ],
    );
  }
}
