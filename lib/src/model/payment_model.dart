class PaymentContent {
  int id;
  String title;
  String image;

  PaymentContent({required this.id, required this.title, required this.image});
}

List<PaymentContent> paymentModel = [
  PaymentContent(
      id: 1, title: "Paypal", image: "lib/src/assets/payment/pay1.png"),
  PaymentContent(
      id: 2, title: "Master Card", image: "lib/src/assets/payment/pay2.png"),
  PaymentContent(
      id: 3, title: "Visa", image: "lib/src/assets/payment/pay3.png"),
  PaymentContent(id: 4, title: "Cash", image: "lib/src/assets/payment/pay4.png")
];
