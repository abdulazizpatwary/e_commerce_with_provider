import 'package:emmercewithprovider/app/app_assets.dart';
import 'package:flutter/material.dart';

class Product {
  final String title;
  final String review;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String sellers;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.sellers,
    required this.category,
    required this.rate,
    required this.quantity,
  });
  
  static List<Product> get products{
    return [
      Product(title: 'Wireless Headphones', review: '(320 Reviews)', description: ' this is brand new product , you will feel the coziness', image: AppAssets.airBudsUrl, price: 300, colors: [Colors.greenAccent, Colors.black,Colors.white], sellers: 'Raz', category: 'Electronics', rate: 4.3, quantity: 6),
      Product(title: 'Woman Sweater', review: '(32 Reviews)', description: 'cotton dress,you will feel the coziness', image: AppAssets.womenSweaterUrl, price: 129, colors: [Colors.brown, Colors.pink,Colors.white], sellers: 'Tariq', category: 'Woman Fashion', rate: 4.5, quantity: 1),
      Product(title: 'Smart Watch', review: '(20 Reviews)', description: 'This is An Mi Product , you will feel the coziness', image: AppAssets.smartWatchUrl, price: 90, colors: [Colors.black, Colors.purple,Colors.white], sellers: 'Ran das', category: 'Electronics', rate: 4.0, quantity: 4),
      Product(title: 'Mens Jacket', review: '(10 Reviews)', description: 'Aarong Mens Jacket , you will feel the coziness', image: AppAssets.mensJacketUrl, price: 155, colors: [Colors.blueAccent, Colors.orange,Colors.blueGrey], sellers: 'Jacket Store', category: 'Mens Fashion', rate: 5, quantity: 2),
    ];
  }
}
