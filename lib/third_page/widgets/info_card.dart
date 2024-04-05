import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String content;
  final Color boxColor;
  final VoidCallback onFilterApply;
  final VoidCallback onTap;

  const InfoCard({
    super.key,
    required this.content,
    required this.boxColor,
    required this.onFilterApply,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            content,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }

  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(content.isNotEmpty ? content : 'Filter'),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onFilterApply();
              },
              child: const Text('Filter anwenden'),
            ),
          ],
        );
      },
    );
  }
}
