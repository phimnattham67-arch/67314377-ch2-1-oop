abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระ $amount บาท ด้วยบัตรเครดิต");
  }
}

class PromptPay extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระ $amount บาท ผ่าน PromptPay");
  }
}

class CashOnDelivery extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระ $amount บาท แบบเก็บเงินปลายทาง");
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard(),
    PromptPay(),
    CashOnDelivery(),
  ];

  for (var payment in payments) {
    payment.pay(500);
  }
}