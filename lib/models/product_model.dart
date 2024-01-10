class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'] as String,
      price: json['price'],
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      // rating: RatingModel.fromJson(json['rating']),
    );
  }
}

class RatingModel {
  final String rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: json['rate'].toString(),
      count: json['count'] as int,
    );
  }
}
