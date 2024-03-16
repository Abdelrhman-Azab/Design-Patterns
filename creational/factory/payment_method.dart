abstract class PaymentMethod {
  String cardNumber;
  String cvv;

  PaymentMethod(this.cardNumber, this.cvv);

  void processPayment();
}

class VisaPaymentMethod extends PaymentMethod {
  VisaPaymentMethod(super.cardNumber, super.cvv);

  @override
  void processPayment() {
    print("PROCESS VISA PAYMENT...");
  }
}

class MasterCardPaymentMethod extends PaymentMethod {
  MasterCardPaymentMethod(super.cardNumber, super.cvv);

  @override
  void processPayment() {
    print("PROCESS MASTER CARD PAYMENT...");
  }
}

class AmericanExpressPaymentMethod extends PaymentMethod {
  AmericanExpressPaymentMethod(super.cardNumber, super.cvv);

  @override
  void processPayment() {
    print("PROCESS AMERICAN EXPRESS PAYMENT...");
  }
}
