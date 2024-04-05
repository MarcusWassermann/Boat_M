import 'package:boat_m/postad_page/postad_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreenLogic {
  static Future<void> register(
      BuildContext context,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController) async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmedPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmedPassword.isEmpty) {
      // Fehlermeldung anzeigen, wenn E-Mail, Passwort oder Passwortwiederholung fehlen
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Bitte geben Sie E-Mail, Passwort und Passwortwiederholung ein'),
        ),
      );
    } else if (password != confirmedPassword) {
      // Fehlermeldung anzeigen, wenn das Passwort und die Passwortwiederholung nicht übereinstimmen
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Die Passwörter stimmen nicht überein')),
      );
    } else {
      // Registrierung erfolgreich
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
