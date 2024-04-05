 import 'package:boat_m/third_page/widgets/advertisement_item.dart';
import 'package:flutter/material.dart';


class AdvertisementList extends StatefulWidget {
  const AdvertisementList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AdvertisementListState createState() => _AdvertisementListState();
}

class _AdvertisementListState extends State<AdvertisementList> {
  final List<String> advertisements =
      List.generate(3000, (index) => 'Anzeige ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: advertisements.length,
        itemBuilder: (context, index) {
          String advertisement = advertisements[index];
          return AdvertisementItemWidget(
            advertisement: advertisement,
            onTap: () {},
            isCommercial: false,
          );
        },
      ),
    );
  }
}
