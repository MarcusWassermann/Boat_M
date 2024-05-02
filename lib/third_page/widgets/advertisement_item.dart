import 'package:flutter/material.dart';
import 'package:boat_m/third_page/Models/commercial_address_data.dart';
import 'package:boat_m/third_page/widgets/boat_data_widget.dart';
import 'package:boat_m/third_page/widgets/image_container.dart';
import 'package:boat_m/third_page/widgets/name_price.dart';
import 'package:boat_m/third_page/widgets/text_field.dart'; // Stellen Sie sicher, dass dieser Pfad korrekt ist

class AdvertisementItemWidget extends StatefulWidget {
  final String advertisement;
  final void Function() onTap;
  final bool isCommercial;
  final CommercialAddressData? commercialAddressData;

  const AdvertisementItemWidget({
    super.key,
    required this.advertisement,
    required this.onTap,
    required this.isCommercial,
    this.commercialAddressData,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AdvertisementItemWidgetState createState() =>
      _AdvertisementItemWidgetState();
}

class _AdvertisementItemWidgetState extends State<AdvertisementItemWidget> {
  late TextEditingController
      _controller; // Der hinzugefügte TextEditingController

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(); // Initialisieren des Controllers
  }

  @override
  void dispose() {
    _controller.dispose(); // Entsorgen des Controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const ImageContainerWidget(),
                  const SizedBox(width: 10),
                  NameAndPrice(isCommercial: widget.isCommercial),
                ],
              ),
              const SizedBox(height: 10),
              TextFieldWidget(
                  controller:
                      _controller), // Übergeben des Controllers an TextFieldWidget
              const SizedBox(height: 10),
              if (widget.commercialAddressData != null)
                Text('Commercial Address: ${widget.commercialAddressData}'),
              const BoatDataWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
