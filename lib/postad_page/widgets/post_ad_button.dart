import 'package:flutter/material.dart';

class PostAdButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PostAdButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Anzeige aufgeben'),
    );
  }
}
