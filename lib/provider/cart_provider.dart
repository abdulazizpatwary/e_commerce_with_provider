import 'package:emmercewithprovider/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier{
  List<Product>_cartList=[];
  List<Product>get cartList=>_cartList;
  void productIncDec(int count,Product product){
    for(Product element in _cartList){
      if(element==product){
        product.quantity=count;
        notifyListeners();
      }
    }


  }
  void toggleFavourite(Product product){
    if(_cartList.contains(product)){
      for(Product element in _cartList){
      if(element.id==product.id){
        element.quantity++;

      }
      }
    }else{
      _cartList.add(product);

    }
    notifyListeners();
  }
  void removeFromList(Product product){
    if(_cartList.contains(product)){
      for(Product element in _cartList){
        if(element==product){
          _cartList.remove(product);

          notifyListeners();
        }
      }
    }
  }
  double get totalPrice{
    double result=0;
    for(Product product in _cartList){
      result +=product.price*product.quantity;

    }
    return result;


  }
  static CartProvider of(BuildContext context,{bool listen=true}){
    return Provider.of<CartProvider>(context,listen: listen);
  }
}