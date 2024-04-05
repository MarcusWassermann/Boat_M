import 'package:flutter/material.dart';

class PaymentUI extends StatelessWidget {
  const PaymentUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLogo(),
        const SizedBox(height: 20.0),
        // UI-Elemente für Preisinformationen und Zahlungsmethoden
      ],
    );
  }

  Widget _buildLogo() {
    return SizedBox(
      height: 100,
      child: Center(
        child: Image.asset(
          'assets/logo-transparent-png.png',
          height: 80,
        ),
      ),
    );
  }
}
