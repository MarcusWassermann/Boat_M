
import 'package:boat_m/home/widgets/drawer_content.dart';
import 'package:boat_m/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const HomeBody(),
      drawer: const DrawerContent(),
    );
  }
}
