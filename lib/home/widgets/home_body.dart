import 'package:boat_m/second_page/second_sccreen.dart';
import 'package:flutter/material.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(seconds: 3),
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const SecondScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var tween =
                    Tween(begin: const Offset(1.0, 0.0), end: Offset.zero);
                var curve = Curves.ease;
                var slideAnimation =
                    animation.drive(tween.chain(CurveTween(curve: curve)));
                return SlideTransition(
                  position: slideAnimation,
                  child: child,
                );
              },
            ),
          );
        }
      },
      child: Center(
        child: Image.asset(
          'assets/logo-transparent-png.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
