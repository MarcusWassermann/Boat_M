import 'dart:math';
import 'package:boat_m/second_page/widgets/cattegory_button.dart';
import 'package:boat_m/widgets/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';
import 'package:boat_m/themes/background_colors.dart'; // Importieren der Farben

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> blueShades =
        BackgroundColors.blueShades.toList(); // Verwenden der Farben

    blueShades.shuffle(Random());

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: SweepGradient(
                  center: const Alignment(0.0, 0.0),
                  startAngle: 0.0,
                  endAngle: pi * 2.0,
                  colors: blueShades,
                ),
              ),
              child: _buildBody(context),
            ),
          ),
          CustomBottomNavigationBar(
            selectedIndex: 0,
            onItemTapped: (index) {
              if (index == 0) {
                Navigator.pushNamed(context, '/home');
              } else if (index == 1) {
                Navigator.pushNamed(context, '/second');
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryButton(context, 'Sailboat', 'assets/7395353.jpg'),
                _buildCategoryButton(
                    context, 'Motoryacht', 'assets/163236.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryButton(
                    context, 'Motorboat', 'assets/14674658.jpg'),
                _buildCategoryButton(
                    context, 'Ruderboat', 'assets/12401798.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryButton(context, 'Jetski', 'assets/50911.jpg'),
                _buildCategoryButton(
                    context, 'Wassersportartikel', 'assets/699955.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryButton(
                    context, 'Anglerequipment', 'assets/1687242.jpg'),
                _buildCategoryButton(
                    context, 'Sonstiges', 'assets/1203808.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(
      BuildContext context, String label, String imagePath) {
    return Expanded(
      child: CategoryButton(
        label: label,
        imagePath: imagePath,
        onPressed: () {
          navigateToThirdScreen(context, label);
        },
      ),
    );
  }
}
