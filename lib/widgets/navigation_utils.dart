
import 'package:boat_m/fourth_page/fourth_screen.dart';
import 'package:boat_m/home/home_screen.dart';
import 'package:boat_m/third_page/Models/commercial_address_data.dart';
import 'package:boat_m/third_page/third_screen.dart';
import 'package:flutter/material.dart';


void navigateToHomeScreen(BuildContext context) {
  Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.linear,
            reverseCurve: Curves.linear,
          )),
          child: child,
        );
      },
      transitionDuration: const Duration(seconds: 3),
    ),
  );
}

void navigateToThirdScreen(BuildContext context, String category) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ThirdScreen(category: category),
      settings: const RouteSettings(arguments: 5000),
    ),
  );
}

void navigateToFourthScreen(
    BuildContext context, CommercialAddressData commercialAddressData) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => FourthScreen(
        commercialAddressData: commercialAddressData, address: '',
      ),
    ),
  );
}
