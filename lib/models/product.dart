import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final int price;
  final String imageUrl;
  Product({
    this.id,
    this.title,
    this.price,
    this.imageUrl,
  });
}
