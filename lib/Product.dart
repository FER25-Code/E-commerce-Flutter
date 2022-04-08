
import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required  this.titer,
    required  this.price,
    required this.pathImage,
  });

  int id;
  String titer;
  String price;
  String pathImage;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    titer: json["titer"],
    price: json["price"],
    pathImage: json["path_image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "titer": titer,
    "price": price,
    "path_image": pathImage,
  };
}
