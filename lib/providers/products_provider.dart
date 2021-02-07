import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:constructionapp/models/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  final String authToken;
  final String userId;
  List<Product> _items = [];

  ProductProvider(
    this.authToken,
    this.userId,
    this._items,
  );

  List<Product> get items {
    return [..._items];
  }

  Future<void> fetchAndSetProducts([bool filterByUser = false]) async {
    final filterString =
        filterByUser ? "orderBy='creatorId'&equalTo='$userId'" : "";
    var url =
        "https://task-constructionapp-default-rtdb.firebaseio.com/products.json?auth=$authToken&$filterString";
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      url =
          "https://task-constructionapp-default-rtdb.firebaseio.com/userFavorites/$userId.json?auth=$authToken";
      final List<Product> loadedProducts = [];
      extractedData.forEach((productId, productData) {
        loadedProducts.add(Product(
          id: productId,
          title: productData["title"],
          price: productData["price"],
          imageUrl: productData["imageUrl"],
        ));
      });
      _items = loadedProducts;
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }

  Future<void> addProduct(Product product) async {
    final url =
        "https://task-constructionapp-default-rtdb.firebaseio.com/products.json?auth=$authToken";
    try {
      final response = await http.post(
        url,
        body: json.encode({
          "title": product.title,
          "imageUrl": product.imageUrl,
          "price": product.price,
          "creatorId": userId,
        }),
      );
      final newProduct = Product(
        id: json.decode(response.body)["name"],
        title: product.title,
        price: product.price,
        imageUrl: product.imageUrl,
      );
      _items.add(newProduct);
      // _items.insert(0, newProduct); at the start of the list
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }

  
  

}
