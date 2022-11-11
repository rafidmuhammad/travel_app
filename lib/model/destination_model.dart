import 'dart:ffi';

import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;

  DestinationModel(
      {required this.id,
      this.name = '',
      this.city = '',
      this.imageUrl = '',
      this.rating = 0.0,
      this.price = 0});

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) {
    return DestinationModel(
        id: id,
        city: json["city"],
        imageUrl: json["imageUrl"],
        name: json["name"],
        price: json["price"],
        rating: json["rating"]);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [id, name, city, imageUrl, rating, price];
}
