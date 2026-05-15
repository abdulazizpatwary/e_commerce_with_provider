import 'package:emmercewithprovider/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier{
  List<Product>_cartList=[];
  List<Product>get cartList=>_cartList;
  void toggleFavourite(Product product){
    if(_cartList.contains(product)){
      for(Product element in _cartList){
      if(element==product){
        element.quantity++;
      }
      }
    }else{
      _cartList.add(product);
    }
    notifyListeners();
  }
  static CartProvider of(BuildContext context,{bool listen=true}){
    return Provider.of<CartProvider>(context,listen: listen);
  }
}