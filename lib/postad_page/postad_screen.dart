// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:boat_m/payment_page/payment_screen.dart';
import 'package:boat_m/payment_page/models/payment_model.dart';
import 'package:boat_m/postad_page/widgets/ad_text_input.dart';
import 'package:boat_m/postad_page/widgets/boat_data_field.dart';
import 'package:boat_m/postad_page/widgets/image_uploader.dart';
import 'package:boat_m/postad_page/widgets/post_ad_button.dart';

class PostAdScreen extends StatefulWidget {
  const PostAdScreen({super.key});

  @override
  _PostAdScreenState createState() => _PostAdScreenState();
}

class _PostAdScreenState extends State<PostAdScreen> {
  final TextEditingController _adTextController = TextEditingController();

  void _postAd(String adText, BuildContext context) {
    PaymentModel paymentModel =
        PaymentModel(adPrice: 1.99); // Hier paymentModel initialisieren
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentScreen(paymentModel: paymentModel),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Image(
            image: AssetImage('assets/logo-transparent-png.png'),
            height: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdTextInput(controller: _adTextController),
              const SizedBox(height: 20.0),
              const Text('Bootsdaten:', style: TextStyle(fontSize: 18.0)),
              const BoatDataFields(),
              const SizedBox(height: 20.0),
              const ImageUploadButton(),
              const SizedBox(height: 20.0),
              PostAdButton(
                onPressed: () {
                  _postAd(_adTextController.text, context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
