import 'package:emmercewithprovider/models/product.dart';
import 'package:emmercewithprovider/provider/favourite_provider.dart';
import 'package:flutter/material.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({
    super.key, required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    final provider=FavouriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15)
            ),
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: (){}, icon: Icon(Icons.share),
          ),
          SizedBox(width: 8,),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: (){
              provider.toggleFavourite(product);
            }, icon: Icon(
            provider.isExist(product)?Icons.favorite:
              Icons.favorite_outline),
          ),

        ],
      ),

    );
  }
}
