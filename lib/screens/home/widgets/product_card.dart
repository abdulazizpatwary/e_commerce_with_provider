import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/models/product.dart';
import 'package:emmercewithprovider/provider/favourite_provider.dart';
import 'package:emmercewithprovider/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen(product: product,)));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.kContentColor,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),

                Expanded(
                  child: Center(
                    child: Hero(
                      tag: product.image,
                      child: Image.asset(
                        product.image,
                        width: 130,
                        height: 130,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: List.generate(product.colors.length, (index) {
                        return Container(
                          height: 18,
                          width: 18,
                          margin: EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(16),
                            //border: Border.all(color: AppColors.kContentColor,width: 2),
                            color: product.colors[index],
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (){
                  provider.toggleFavourite(product);
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Icon(
                    provider.isExist(product)?Icons.favorite:
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
