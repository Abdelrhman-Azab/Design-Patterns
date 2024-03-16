import 'card_type.dart';
import 'payment_method.dart';

class PaymentMethodFactory {
  PaymentMethodFactory();

  PaymentMethod createPaymentMethod({
    required String cardNumber,
    required String cvv,
    required CardType cardType,
  }) {
    switch (cardType) {
      case CardType.VISA:
        return VisaPaymentMethod(cardNumber, cvv);
      case CardType.AMERICAN_EXPRESS:
        return AmericanExpressPaymentMethod(cardNumber, cvv);
      case CardType.MASTER_CARD:
        return MasterCardPaymentMethod(cardNumber, cvv);
    }
  }
}
