import 'package:boat_m/postad_page/widgets/provider_type_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:boat_m/payment_page/payment_screen.dart';
import 'package:boat_m/payment_page/models/payment_model.dart';
import 'package:boat_m/postad_page/widgets/ad_text_input.dart';
import 'package:boat_m/postad_page/widgets/boat_data_field.dart';
import 'package:boat_m/postad_page/widgets/commercial_details_dialog.dart';
import 'package:boat_m/postad_page/widgets/image_uploader.dart';
import 'package:boat_m/postad_page/widgets/post_ad_button.dart';

class PostAdScreen extends StatefulWidget {
  
  // ignore: prefer_typing_uninitialized_variables
  final commercialAddressData;

  const PostAdScreen({super.key, this.commercialAddressData});

  @override
  // ignore: library_private_types_in_public_api
  _PostAdScreenState createState() => _PostAdScreenState();
}

class _PostAdScreenState extends State<PostAdScreen> {
  final TextEditingController _adTextController = TextEditingController();
  bool _isCommercial = false;
  bool _isPrivate = false;

  void _postAd(String adText, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            PaymentScreen(paymentModel: PaymentModel(adPrice: 1.99)),
      ),
    );
  }

  void _showCommercialDetailsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CommercialDetailsDialog(
          onSave: (companyName, companyLocation, companyStreet,
              companyPhoneNumber, companyEmail) {},
        );
      },
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
              const Text(
                '',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 10.0),
              AdTextInput(controller: _adTextController),
              const SizedBox(height: 20.0),
              const Text('Bootsdaten:', style: TextStyle(fontSize: 18.0)),
              const BoatDataFields(),
              const SizedBox(height: 8.0),
              const Text('Anbieterart:', style: TextStyle(fontSize: 18.0)),
              ProviderTypeCheckboxes(
                isCommercial: _isCommercial,
                isPrivate: _isPrivate,
                onCommercialChanged: (value) {
                  setState(() {
                    _isCommercial = value ?? false;
                    _isPrivate = !(value ?? false);
                    if (_isCommercial) {
                      _showCommercialDetailsDialog();
                    }
                  });
                },
                onPrivateChanged: (value) {
                  setState(() {
                    _isPrivate = value ?? false;
                    _isCommercial = !(value ?? false);
                  });
                },
              ),
              const SizedBox(height: 20.0),
              const ImageUploadButton(),
              const SizedBox(height: 20.0),
              PostAdButton(
                onPressed: () {
                  String adText = _adTextController.text;
                  _postAd(adText, context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
