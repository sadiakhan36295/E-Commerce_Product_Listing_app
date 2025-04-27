class ProductModel {
  final String name;
  final String imageUrl;
  final double price;
  final double oldPrice;
  final int discount;
  final double rating;
  final int reviews;
  final bool isFavorite;
  final bool isOutOfStock;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rating,
    required this.reviews,
    required this.isFavorite,
    required this.isOutOfStock,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
      oldPrice: json['oldPrice'].toDouble(),
      discount: json['discount'],
      rating: json['rating'].toDouble(),
      reviews: json['reviews'],
      isFavorite: json['isFavorite'],
      isOutOfStock: json['isOutOfStock'],
    );
  }
}
