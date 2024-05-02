// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AdCheckboxes extends StatefulWidget {
  final ValueChanged<bool> onCommercialChanged;
  final ValueChanged<bool> onPrivateChanged;

  const AdCheckboxes({
    super.key,
    required this.onCommercialChanged,
    required this.onPrivateChanged,
  });

  @override
  _AdCheckboxesState createState() => _AdCheckboxesState();
}

class _AdCheckboxesState extends State<AdCheckboxes> {
  bool isCommercialChecked = false;
  bool isPrivateChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Checkbox(
          value: isCommercialChecked,
          onChanged: (value) {
            setState(() {
              isCommercialChecked = value!;
              isPrivateChecked = !value;
              widget.onCommercialChanged(value);
            });
          },
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
        ),
        const Text('Gewerblich', style: TextStyle(color: Colors.white)),
        Checkbox(
          value: isPrivateChecked,
          onChanged: (value) {
            setState(() {
              isPrivateChecked = value!;
              isCommercialChecked = !value;
              widget.onPrivateChanged(value);
            });
          },
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
        ),
        const Text('Privat', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
