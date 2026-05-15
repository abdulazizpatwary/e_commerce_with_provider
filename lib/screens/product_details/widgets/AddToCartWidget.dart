import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/models/product.dart';
import 'package:emmercewithprovider/provider/cart_provider.dart';
import 'package:emmercewithprovider/screens/product_details/widgets/inc_dec_button.dart';
import 'package:flutter/material.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final provider=CartProvider.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 85,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50)
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white)

              ),
              alignment: Alignment.center,
              child: IncDecButton(onTap: (int count){}),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(

                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 12,horizontal: 16)

              ),
                onPressed: (){
                provider.toggleFavourite(product);
                const snackBar= SnackBar(content: Text('Scuccessfully Added',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),duration: Duration(microseconds: 300),);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, child: Text('Add to Cart',style: TextStyle(fontSize: 18),)),
          ],

        ),
      ),
    );
  }
}
