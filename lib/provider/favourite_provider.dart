import 'package:emmercewithprovider/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteProvider extends ChangeNotifier{
  final List<Product>_favouriteList=[];
  List<Product>get favouriteList=>_favouriteList;

  void toggleFavourite(Product product){
    bool isAlreadyAdded=false;
    for(Product element in _favouriteList){
      if(element.id==product.id){
        isAlreadyAdded=true;
      }
    }
    if(isAlreadyAdded){
      _favouriteList.remove(product);
    }
    else{
      _favouriteList.add(product);
    }
    notifyListeners();

  }
  bool isExist(Product product){
    bool isExist=false;
    for(Product element in _favouriteList){
      if(element.id==product.id){
        isExist=true;
      }
    }
    notifyListeners();
    return isExist;

  }

  void removeFromList(Product product){
    if(_favouriteList.contains(product)){
      for(Product element in _favouriteList){
        if(element==product){
          _favouriteList.remove(product);
          notifyListeners();
        }
      }
    }
  }

  static FavouriteProvider of(BuildContext context,{bool listen=true}){
    return Provider.of<FavouriteProvider>(context,listen: listen);
  }
}