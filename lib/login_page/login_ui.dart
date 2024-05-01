import 'dart:math';
import 'package:flutter/material.dart';
import 'package:boat_m/themes/background_colors.dart';
import 'package:boat_m/fith_page/main_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  Future<void> _login(BuildContext context) async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

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

  @override
  Widget build(BuildContext context) {
    final List<Color> blueShades = BackgroundColors.blueShades;
    blueShades.shuffle(Random());

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              center: Alignment.center,
              startAngle: 0,
              endAngle: pi * 2,
              colors: blueShades,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  child: Image.asset('assets/logo-transparent-png.png'),
                ),
                const SizedBox(height: 60.0),
                Column(
                  children: [
                    TextField(
                      controller: _emailController,
                      style: const TextStyle(
                          color: Colors.black), // Textfarbe schwarz setzen
                      decoration: const InputDecoration(
                        labelText: 'E-Mail',
                        labelStyle: TextStyle(
                            color: Colors.black), // Label-Farbe schwarz setzen
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Focused Border-Farbe schwarz setzen
                        ),
                        filled: true, // Textfeld mit Hintergrundfarbe füllen
                        fillColor: Colors
                            .white, // Hintergrundfarbe des Textfelds setzen
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                      controller: _passwordController,
                      style: const TextStyle(
                          color: Colors.black), // Textfarbe schwarz setzen
                      decoration: const InputDecoration(
                        labelText: 'Passwort',
                        labelStyle: TextStyle(
                            color: Colors.black), // Label-Farbe schwarz setzen
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Focused Border-Farbe schwarz setzen
                        ),
                        filled: true, // Textfeld mit Hintergrundfarbe füllen
                        fillColor: Colors
                            .white, // Hintergrundfarbe des Textfelds setzen
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 12.0),
                    GestureDetector(
                      onTap: () {
                        // Implementieren Sie die Passwortrücksetzung hier
                      },
                      child: const Text(
                        'Passwort vergessen?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () => _login(context),
                  child: const Text('Einloggen'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
