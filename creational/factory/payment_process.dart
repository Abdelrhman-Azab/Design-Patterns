import 'card_type.dart';
import 'payment_method.dart';
import 'payment_method_factory.dart';

class PaymentProcess {
  final PaymentMethodFactory paymentMethodFactory;

  PaymentProcess(this.paymentMethodFactory);

  void processPayment({
    required String cardNumber,
    required String cvv,
    required CardType cardType,
  }) {
    PaymentMethod paymentMethod = paymentMethodFactory.createPaymentMethod(
        cardNumber: cardNumber, cvv: cvv, cardType: cardType);
    paymentMethod.processPayment();
  }
}
