import 'package:flutter/material.dart';

class ImageUploader extends StatelessWidget {
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double horizontalPadding;
  final double verticalPadding;

  const ImageUploader({
    super.key,
    required this.onPressed,
    this.width,
    this.height,
    this.horizontalPadding = 36.0, // Standard-Horizontal Padding: 16.0
    this.verticalPadding = 22.0, // Standard-Vertical Padding: 8.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: SizedBox(
        width: 60,
        height: 160,
        child: ElevatedButton(
          onPressed: onPressed,
          child: const Text('Fotos hochladen'),
        ),
      ),
    );
  }
}
