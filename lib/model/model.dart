class Product {
  String? title;
  String? description;
  String? image;
  String? subTitle;
  int? quantity;
  bool? isFav;
  String? price;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.subTitle,
    required this.quantity,
    required this.isFav,
    required this.price,
  });

  Product.fromJson(Map json) {
    this.title = json["title"];
    this.description = json["description"];
    this.image = json["image"];
    this.subTitle = json["subTitle"];
    this.quantity = json["quantity"];
    this.isFav = json["isFav"];
    this.price = json["price"];
  }
}
