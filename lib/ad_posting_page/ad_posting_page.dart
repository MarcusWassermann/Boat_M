// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:boat_m/ad_posting_page/widgets/ad_textfield.dart';
import 'package:boat_m/themes/background_colors.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';
import 'package:boat_m/ad_posting_page/widgets/image_uploader.dart';
import 'package:boat_m/ad_posting_page/widgets/ad_checkboxes.dart';
import 'package:boat_m/payment_page/payment_screen.dart';
import 'package:boat_m/payment_page/models/payment_model.dart';

class AdPostingPage extends StatefulWidget {
  const AdPostingPage({super.key});

  @override
  _AdPostingPageState createState() => _AdPostingPageState();
}

class _AdPostingPageState extends State<AdPostingPage> {
  final TextEditingController _adTextController = TextEditingController();
  String street = '';
  String city = '';
  String postalCode = '';
  String emailAddress = '';
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Anzeige erstellen'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          BackgroundColors.getBackgroundWidget(),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AdTextField(controller: _adTextController),
                const SizedBox(height: 26.0),
                ImageUploader(
                  onPressed: () {
                    // Funktion zum Hochladen von Fotos
                  },
                ),
                const SizedBox(height: 26.0),
                AdCheckboxes(
                  onCommercialChanged: (value) {
                    if (value) {
                      _showAddressPopup(context);
                    }
                  },
                  onPrivateChanged: (value) {
                    if (value) {
                      _showAddressPopup(context);
                    }
                  },
                ),
                const SizedBox(height: 36.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton(
                        onPressed: () {
                          // Instantiate paymentModel with appropriate parameters
                          PaymentModel paymentModel =
                              PaymentModel(adPrice: 1.99);
                          // Navigate to PaymentScreen with paymentModel argument
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PaymentScreen(paymentModel: paymentModel),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 86, 233, 91),
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        child: const Text(
                          'Anzeige aufgeben',
                          style: TextStyle(fontSize: 22.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index) {},
      ),
    );
  }

  Future<void> _showAddressPopup(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Adresse eingeben'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  street = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Straße',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Stadt',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                setState(() {
                  postalCode = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Postleitzahl',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                setState(() {
                  emailAddress = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'E-Mail Adresse',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Telefonnummer',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Abbrechen'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
