import 'package:flutter/material.dart';

class FavoriteIcon extends StatefulWidget {
  final void Function(bool isFavorite) onPressed;

  const FavoriteIcon({super.key, required this.onPressed});

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : null,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        widget.onPressed(isFavorite);
      },
    );
  }
}
