class Food {
  final String name;
  final String ? description;
  final String imageUrl;
  final double price;

  Food({required this.name, required this.imageUrl, required this.price, this.description});
}