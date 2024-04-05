import 'package:boat_m/payment_page/models/payment_model.dart';

class PaymentLogic {
  static void processPayment(PaymentModel paymentModel) {
    double totalPrice = paymentModel.adPrice;
    // ignore: avoid_print
    print('Die Zahlung von $totalPrice € wurde erfolgreich abgeschlossen.');
  }
}
