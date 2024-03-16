import 'card_type.dart';
import 'payment_method_factory.dart';
import 'payment_process.dart';

void main() {
  PaymentProcess paymentProcess = PaymentProcess(PaymentMethodFactory());

  paymentProcess.processPayment(
      cardNumber: '123123123', cvv: '22', cardType: CardType.VISA);
}
