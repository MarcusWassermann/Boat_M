import 'package:boat_m/ad_posting_page/ad_posting_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:boat_m/postad_page/ad_provider.dart';
import 'package:boat_m/third_page/favorite_provider.dart';
import 'package:boat_m/home/home_screen.dart';
import 'package:boat_m/second_page/second_screen.dart';
import 'package:boat_m/themes/custom_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AdProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => AdPostingProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.getTheme(),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
