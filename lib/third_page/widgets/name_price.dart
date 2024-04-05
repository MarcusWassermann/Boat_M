// Datei: widgets/name_and_price.dart

import 'package:boat_m/contact_form_page/contact_form_screen.dart';
import 'package:boat_m/fourth_page/fourth_screen.dart';
import 'package:flutter/material.dart';


class NameAndPrice extends StatefulWidget {
  final bool isCommercial;
  final dynamic
      commercialAddressData; // Typ des dynamischen Datenobjekts angeben

  const NameAndPrice({
    super.key,
    required this.isCommercial,
    this.commercialAddressData,
  });

  @override
  // ignore: library_private_types_in_public_api
  _NameAndPriceState createState() => _NameAndPriceState();
}

class _NameAndPriceState extends State<NameAndPrice> {
  bool isCommercial = false;
  bool isPrivate = false;

  double commercialAlignment = 0.0;
  double privateAlignment = 0.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProviderWidget(),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Name',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Price',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProviderButton(
            'Gew. Anbieter', widget.isCommercial, Colors.blue, false, () {
          setState(() {
            isCommercial = true;
            isPrivate = false;
          });
          if (!widget.isCommercial) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FourthScreen(address: ''),
              ),
            );
          }
        }),
        _buildProviderButton('Privat', !widget.isCommercial, Colors.black, true,
            () {
          setState(() {
            isCommercial = false;
            isPrivate = true;
          });
          if (widget.isCommercial) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactFormScreen(),
              ),
            );
          }
        }),
      ],
    );
  }

  Widget _buildProviderButton(String label, bool isActive, Color color,
      bool isPrivate, VoidCallback onPressed) {
    return Align(
      alignment:
          Alignment(-1.0, isPrivate ? privateAlignment : commercialAlignment),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? color : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: isActive ? onPressed : null,
            icon: const Icon(Icons.fingerprint_rounded),
            color: isActive ? color : Colors.grey,
          ),
        ],
      ),
    );
  }
}
