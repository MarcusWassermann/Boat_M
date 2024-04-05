import 'package:flutter/material.dart';

class ProviderTypeCheckboxes extends StatelessWidget {
  final bool isCommercial;
  final bool isPrivate;
  final void Function(bool?) onCommercialChanged;
  final void Function(bool?) onPrivateChanged;

  const ProviderTypeCheckboxes({
    super.key,
    required this.isCommercial,
    required this.isPrivate,
    required this.onCommercialChanged,
    required this.onPrivateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: isCommercial,
              onChanged: onCommercialChanged,
            ),
            const Text('Kommerziell'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isPrivate,
              onChanged: onPrivateChanged,
            ),
            const Text('Privat'),
          ],
        ),
      ],
    );
  }
}
