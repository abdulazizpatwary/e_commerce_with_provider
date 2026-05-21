import 'package:emmercewithprovider/app/app_assets.dart';
import 'package:flutter/material.dart';

class Product {
  final int id;
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
    required this.id
  });
  
  static List<Product> get products{
    return [
      Product(id:1,title: 'Wireless Headphones', review: '(320 Reviews)', description: ' this is brand new product , you will feel the coziness', image: AppAssets.airBudsUrl, price: 300, colors: [Colors.greenAccent, Colors.black,Colors.white], sellers: 'Raz', category: 'Electronics', rate: 4.3, quantity: 6),
      Product(id:2,title: 'Woman Sweater', review: '(32 Reviews)', description: 'cotton dress,you will feel the coziness', image: AppAssets.womenSweaterUrl, price: 129, colors: [Colors.brown, Colors.pink,Colors.white], sellers: 'Tariq', category: 'Woman Fashion', rate: 4.5, quantity: 1),
      Product(id:3,title: 'Smart Watch', review: '(20 Reviews)', description: 'This is An Mi Product , you will feel the coziness', image: AppAssets.smartWatchUrl, price: 90, colors: [Colors.black, Colors.purple,Colors.white], sellers: 'Ran das', category: 'Electronics', rate: 4.0, quantity: 4),
      Product(id:4,title: 'Mens Jacket', review: '(10 Reviews)', description: 'Aarong Mens Jacket , you will feel the coziness', image: AppAssets.mensJacketUrl, price: 155, colors: [Colors.blueAccent, Colors.orange,Colors.blueGrey], sellers: 'Jacket Store', category: 'Mens Fashion', rate: 5, quantity: 2),
    ];
  }
  static List<Product> get all{
List<Product> allList=[];
allList.addAll(products);
allList.addAll(shoes);
allList.addAll(beauty);
    return allList;

  }
  static List<Product> get shoes{
    return [
      Product(id:5,title: 'Jordan Shoe', review: '(320 Reviews)', description: ' this is brand new product , you will feel the coziness', image: AppAssets.airBudsUrl, price: 300, colors: [Colors.greenAccent, Colors.black,Colors.white], sellers: 'Raz', category: 'Electronics', rate: 4.3, quantity: 6),
      Product(id:6,title: 'AppexShoe', review: '(32 Reviews)', description: 'cotton dress,you will feel the coziness', image: AppAssets.womenSweaterUrl, price: 129, colors: [Colors.brown, Colors.pink,Colors.white], sellers: 'Tariq', category: 'Woman Fashion', rate: 4.5, quantity: 1),
      Product(id:7,title: 'Bata shoe', review: '(20 Reviews)', description: 'This is An Mi Product , you will feel the coziness', image: AppAssets.smartWatchUrl, price: 90, colors: [Colors.black, Colors.purple,Colors.white], sellers: 'Ran das', category: 'Electronics', rate: 4.0, quantity: 4),
      Product(id:8,title: 'Nike shoe', review: '(10 Reviews)', description: 'Aarong Mens Jacket , you will feel the coziness', image: AppAssets.mensJacketUrl, price: 155, colors: [Colors.blueAccent, Colors.orange,Colors.blueGrey], sellers: 'Jacket Store', category: 'Mens Fashion', rate: 5, quantity: 2),
    ];
  }
  static List<Product> get beauty{
    return [
      Product(id:9,title: 'Jordan Shoe', review: '(320 Reviews)', description: ' this is brand new product , you will feel the coziness', image: AppAssets.airBudsUrl, price: 300, colors: [Colors.greenAccent, Colors.black,Colors.white], sellers: 'Raz', category: 'Electronics', rate: 4.3, quantity: 6),
      Product(id:10,title: 'AppexShoe', review: '(32 Reviews)', description: 'cotton dress,you will feel the coziness', image: AppAssets.womenSweaterUrl, price: 129, colors: [Colors.brown, Colors.pink,Colors.white], sellers: 'Tariq', category: 'Woman Fashion', rate: 4.5, quantity: 1),
      Product(id:11,title: 'Bata shoe', review: '(20 Reviews)', description: 'This is An Mi Product , you will feel the coziness', image: AppAssets.smartWatchUrl, price: 90, colors: [Colors.black, Colors.purple,Colors.white], sellers: 'Ran das', category: 'Electronics', rate: 4.0, quantity: 4),
      Product(id:12,title: 'Nike shoe', review: '(10 Reviews)', description: 'Aarong Mens Jacket , you will feel the coziness', image: AppAssets.mensJacketUrl, price: 155, colors: [Colors.blueAccent, Colors.orange,Colors.blueGrey], sellers: 'Jacket Store', category: 'Mens Fashion', rate: 5, quantity: 2),
    ];
  }
  static List<Product> get womensFashion{
    return [
      Product(id:13,title: 'Jordan Shoe', review: '(320 Reviews)', description: ' this is brand new product , you will feel the coziness', image: AppAssets.airBudsUrl, price: 300, colors: [Colors.greenAccent, Colors.black,Colors.white], sellers: 'Raz', category: 'Electronics', rate: 4.3, quantity: 6),
      Product(id:14,title: 'AppexShoe', review: '(32 Reviews)', description: 'cotton dress,you will feel the coziness', image: AppAssets.womenSweaterUrl, price: 129, colors: [Colors.brown, Colors.pink,Colors.white], sellers: 'Tariq', category: 'Woman Fashion', rate: 4.5, quantity: 1),
      Product(id:15,title: 'Bata shoe', review: '(20 Reviews)', description: 'This is An Mi Product , you will feel the coziness', image: AppAssets.smartWatchUrl, price: 90, colors: [Colors.black, Colors.purple,Colors.white], sellers: 'Ran das', category: 'Electronics', rate: 4.0, quantity: 4),
      Product(id:16,title: 'Nike shoe', review: '(10 Reviews)', description: 'Aarong Mens Jacket , you will feel the coziness', image: AppAssets.mensJacketUrl, price: 155, colors: [Colors.blueAccent, Colors.orange,Colors.blueGrey], sellers: 'Jacket Store', category: 'Mens Fashion', rate: 5, quantity: 2),
    ];
  }
  static List<Product> get jewelery{
    return [
      Product(id:17,title: 'Jordan Shoe', review: '(320 Reviews)', description: ' this is brand new product , you will feel the coziness', image: AppAssets.airBudsUrl, price: 300, colors: [Colors.greenAccent, Colors.black,Colors.white], sellers: 'Raz', category: 'Electronics', rate: 4.3, quantity: 6),
      Product(id:18,title: 'AppexShoe', review: '(32 Reviews)', description: 'cotton dress,you will feel the coziness', image: AppAssets.womenSweaterUrl, price: 129, colors: [Colors.brown, Colors.pink,Colors.white], sellers: 'Tariq', category: 'Woman Fashion', rate: 4.5, quantity: 1),
      Product(id:16,title: 'Bata shoe', review: '(20 Reviews)', description: 'This is An Mi Product , you will feel the coziness', image: AppAssets.smartWatchUrl, price: 90, colors: [Colors.black, Colors.purple,Colors.white], sellers: 'Ran das', category: 'Electronics', rate: 4.0, quantity: 4),
      Product(id:20,title: 'Nike shoe', review: '(10 Reviews)', description: 'Aarong Mens Jacket , you will feel the coziness', image: AppAssets.mensJacketUrl, price: 155, colors: [Colors.blueAccent, Colors.orange,Colors.blueGrey], sellers: 'Jacket Store', category: 'Mens Fashion', rate: 5, quantity: 2),
    ];
  }
  static List<Product> get mensFashion{
    return [
      Product(id:21,title: 'Jordan Shoe', review: '(320 Reviews)', description: ' this is brand new product , you will feel the coziness', image: AppAssets.airBudsUrl, price: 300, colors: [Colors.greenAccent, Colors.black,Colors.white], sellers: 'Raz', category: 'Electronics', rate: 4.3, quantity: 6),
      Product(id:22,title: 'AppexShoe', review: '(32 Reviews)', description: 'cotton dress,you will feel the coziness', image: AppAssets.womenSweaterUrl, price: 129, colors: [Colors.brown, Colors.pink,Colors.white], sellers: 'Tariq', category: 'Woman Fashion', rate: 4.5, quantity: 1),
      Product(id:23,title: 'Bata shoe', review: '(20 Reviews)', description: 'This is An Mi Product , you will feel the coziness', image: AppAssets.smartWatchUrl, price: 90, colors: [Colors.black, Colors.purple,Colors.white], sellers: 'Ran das', category: 'Electronics', rate: 4.0, quantity: 4),
      Product(id:24,title: 'Nike shoe', review: '(10 Reviews)', description: 'Aarong Mens Jacket , you will feel the coziness', image: AppAssets.mensJacketUrl, price: 155, colors: [Colors.blueAccent, Colors.orange,Colors.blueGrey], sellers: 'Jacket Store', category: 'Mens Fashion', rate: 5, quantity: 2),
    ];
  }
}
