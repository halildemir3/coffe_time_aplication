class CoffeModel {
  final String name;
  final String image;
  final String price;

  CoffeModel({required this.name, required this.image, required this.price});
}

List<CoffeModel> Item = [
  CoffeModel(image: 'assets/k1.jpg', name: "Americano", price: "15"),
  CoffeModel(image: 'assets/k2.jpg', name: "Mocha ", price: "10"),
  CoffeModel(image: 'assets/k3.jpg', name: "W-C Mocha ", price: "25"),
  CoffeModel(image: 'assets/k4.jpg', name: "Latte", price: "20"),
  CoffeModel(image: 'assets/k5.jpg', name: "Macchiato ", price: "27"),
  CoffeModel(image: 'assets/k6.jpg', name: "Cappuccino", price: "23"),
  CoffeModel(image: 'assets/k7.jpg', name: " Flat White", price: "17"),
  CoffeModel(image: 'assets/k8.jpg', name: "Cold brew", price: "18"),
  CoffeModel(image: 'assets/k9.jpg', name: "Turkish Coffe", price: "20"),
];
