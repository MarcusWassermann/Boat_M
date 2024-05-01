import 'package:flutter/material.dart';
import 'dart:math';
import 'package:boat_m/themes/background_colors.dart';
import 'package:boat_m/third_page/widgets/advertisemen_list.dart';
import 'package:boat_m/third_page/widgets/top_box_contents.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.category});

  final String category;

  @override
  // ignore: library_private_types_in_public_api
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  late List<Color> blueShades;

  @override
  void initState() {
    super.initState();
    blueShades = BackgroundColors.blueShades.toList();
    blueShades.shuffle(Random());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            center: Alignment.center,
            startAngle: 0,
            endAngle: 2 * pi,
            colors: blueShades,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  TopBoxContents(),
                  const SizedBox(height: 20),
                  const AdvertisementList(),
                ],
              ),
            ),
            CustomBottomNavigationBar(
              selectedIndex: 0,
              onItemTapped: (index) {},
            ),
          ],
        ),
      ),
    );
  }
}
