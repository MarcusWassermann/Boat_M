import 'package:boat_m/third_page/Models/commercial_address_data.dart';
import 'package:boat_m/third_page/widgets/boat_data_widget.dart';
import 'package:boat_m/third_page/widgets/image_container.dart';
import 'package:boat_m/third_page/widgets/name_price.dart';
import 'package:boat_m/widgets/text_field.dart';
import 'package:flutter/material.dart';


class AdvertisementItemWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                  NameAndPrice(isCommercial: isCommercial),
                ],
              ),
              const SizedBox(height: 10),
              const TextFieldWidget(),
              const SizedBox(height: 10),
              if (commercialAddressData != null)
                Text('Commercial Address: $commercialAddressData'),
              const BoatDataWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
