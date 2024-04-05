import 'package:flutter/material.dart';

class MainContainerWidget extends StatefulWidget {
  const MainContainerWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainContainerWidgetState createState() => _MainContainerWidgetState();
}

class _MainContainerWidgetState extends State<MainContainerWidget> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(200, 234, 233, 228),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          child: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Weitere Inhalte
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
