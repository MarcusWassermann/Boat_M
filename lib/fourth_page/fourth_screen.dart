import 'package:boat_m/third_page/Models/commercial_address_data.dart';
import 'package:flutter/material.dart';


class FourthScreen extends StatelessWidget {
  final CommercialAddressData? commercialAddressData;

  const FourthScreen({super.key, this.commercialAddressData, required String address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Commercial Address'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: commercialAddressData != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anbieter: ${commercialAddressData!.companyName}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Adresse: ${commercialAddressData!.address}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              )
            : const Text('Commercial Address Daten nicht verfügbar'),
      ),
    );
  }
}
