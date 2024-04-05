import 'package:boat_m/second_page/widgets/cattegory_button.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';
import 'package:boat_m/widgets/navigation_utils.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(
                seconds: 9), // Hier die Dauer in Sekunden einstellen
            child: FloatingActionButton(
              onPressed: () {
                navigateToHomeScreen(context);
              },
              backgroundColor: const Color.fromARGB(255, 33, 150, 243),
              child: const Icon(Icons.fingerprint),
            ),
          ),
        ),
      ),
      body: _buildBody(context),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index) {
          // Handle bottom navigation item tap
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            'assets/logo-transparent-png.png',
            height: 50,
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(16),
            childAspectRatio: 1.2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 8,
            children: [
              _buildCategoryButton(context, 'Sailboat', 'assets/7395353.jpg'),
              _buildCategoryButton(context, 'Motoryacht', 'assets/163236.jpg'),
              _buildCategoryButton(context, 'Motorboat', 'assets/14674658.jpg'),
              _buildCategoryButton(context, 'Ruderboat', 'assets/12401798.jpg'),
              _buildCategoryButton(context, 'Jetski', 'assets/50911.jpg'),
              _buildCategoryButton(
                  context, 'Wassersportartikel', 'assets/699955.jpg'),
              _buildCategoryButton(
                  context, 'Anglerequipment', 'assets/1687242.jpg'),
              _buildCategoryButton(context, 'Sonstiges', 'assets/1203808.jpg'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryButton(
      BuildContext context, String label, String imagePath) {
    return CategoryButton(
      label: label,
      imagePath: imagePath,
      onPressed: () {
        navigateToThirdScreen(context, label);
      },
    );
  }
}
