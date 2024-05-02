import 'package:boat_m/ad_posting_page/ad_posting_page.dart';
import 'package:boat_m/postad_page/postad_screen.dart';
import 'package:flutter/material.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';
import 'package:boat_m/themes/background_colors.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CategoryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      child: Text(text),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Kategorien'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          BackgroundColors.getBackgroundWidget(),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            children: [
              const SizedBox(height: 20),
              CategoryButton(
                text: 'Sailboat',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PostAdScreen(), 
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CategoryButton(
                text: 'Motoryacht',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PostAdScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CategoryButton(
                text: 'Motorboot',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PostAdScreen(), 
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CategoryButton(
                text: 'Jetski',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PostAdScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CategoryButton(
                text: 'Wassersportartikel',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AdPostingPage(), 
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CategoryButton(
                text: 'Anglerequipment',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AdPostingPage(), 
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CategoryButton(
                text: 'Sonstiges',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AdPostingPage(), 
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index) {},
      ),
    );
  }
}
