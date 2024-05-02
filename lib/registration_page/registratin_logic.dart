// registration_logic.dart
import 'package:flutter/material.dart';
import 'package:boat_m/postad_page/postad_screen.dart';

class RegistrationLogic {
  static Future<void> register(
      BuildContext context,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController) async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmedPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmedPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Bitte geben Sie E-Mail, Passwort und Passwortwiederholung ein'),
        ),
      );
    } else if (password != confirmedPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Die Passwörter stimmen nicht überein')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registrierung erfolgreich: $email')),
      );
      // Aktionen nach der Registrierung ausführen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PostAdScreen()),
      );
    }
  }
}
