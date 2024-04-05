import 'package:flutter/material.dart';
import 'package:boat_m/payment_page/models/payment_model.dart';
import 'package:boat_m/payment_page/logic/payment_logic.dart';

class PaymentScreen extends StatelessWidget {
  final PaymentModel paymentModel;

  const PaymentScreen({super.key, required this.paymentModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              'assets/logo-transparent-png.png',
              height: 80,
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Bitte bezahlen Sie für Ihre Anzeige:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Preis: 1.99 € pro Monat',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Wählen Sie eine Zahlungsmethode:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    PaymentLogic.processPayment(paymentModel);
                  },
                  icon: const Icon(Icons.credit_card),
                  label: const Text(
                    'Kreditkarte',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12.0),
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton.icon(
                  onPressed: () {
                    PaymentLogic.processPayment(paymentModel);
                  },
                  icon: const Icon(Icons.payment),
                  label: const Text(
                    'PayPal',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12.0),
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton.icon(
                  onPressed: () {
                    PaymentLogic.processPayment(paymentModel);
                  },
                  icon: const Icon(Icons.money),
                  label: const Text(
                    'Sofort Überweisung',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12.0),
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton.icon(
                  onPressed: () {
                    PaymentLogic.processPayment(paymentModel);
                  },
                  icon: const Icon(Icons.monetization_on),
                  label: const Text(
                    'Sepa Lastschrift',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12.0),
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton.icon(
                  onPressed: () {
                    PaymentLogic.processPayment(paymentModel);
                  },
                  icon: const Icon(Icons.qr_code),
                  label: const Text(
                    'Scan to Pay',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12.0),
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                // Fügen Sie weitere Zahlungsmethoden nach Bedarf hinzu
              ],
            ),
          ),
        ],
      ),
    );
  }
}
