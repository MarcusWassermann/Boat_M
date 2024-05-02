// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ImageContainerWidget extends StatefulWidget {
  const ImageContainerWidget({super.key});

  @override
  _ImageContainerWidgetState createState() => _ImageContainerWidgetState();
}

class _ImageContainerWidgetState extends State<ImageContainerWidget> {
  int _currentIndex = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 238, 238),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: 3, // Anzahl der Bilder nach Bedarf
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY((_currentIndex == index) ? 0 : 3.141),
                        child: const AnimatedSwitcher(
                          duration: Duration(milliseconds: 800),
                          child: Placeholder(),
                        ),
                      );
                    },
                  ),
                  const Positioned(
                    top: 80,
                    right: 80,
                    child: Text(
                      'Bilder',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
