import 'package:boat_m/fith_page/main_screen.dart';
import 'package:flutter/material.dart';


class LoginScreenLogic {
  static Future<void> login(
      BuildContext context,
      TextEditingController emailController,
      TextEditingController passwordController) async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bitte geben Sie E-Mail und Passwort ein'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Einloggen erfolgreich: $email')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    }
  }
}
