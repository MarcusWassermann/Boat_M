import 'package:boat_m/home/home_screen.dart';
import 'package:boat_m/themes/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
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
      debugShowCheckedModeBanner: false,
    );
  }
}

final appDataProvider = ChangeNotifierProvider((_) => AppData());

class AppData extends ChangeNotifier {
  // Hier kommen  App-Daten hin, die zwischen Widgets geteilt werden sollen
}
