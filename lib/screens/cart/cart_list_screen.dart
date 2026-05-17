import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/models/product.dart';
import 'package:emmercewithprovider/provider/cart_provider.dart';
import 'package:emmercewithprovider/screens/cart/cart_bottom_sheet.dart';
import 'package:emmercewithprovider/screens/cart/cart_custom_app_bar.dart';
import 'package:emmercewithprovider/screens/product_details/widgets/inc_dec_button.dart';
import 'package:emmercewithprovider/screens/snack_bar_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:uuid/uuid.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {


  @override
  Widget build(BuildContext context) {
    final cartProvider = CartProvider.of(context);
    return Scaffold(
      backgroundColor: AppColors.kContentColor,
      bottomSheet: CartBottomSheet(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: CartCustomAppBar(),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                itemCount: cartProvider.cartList.length,
                itemBuilder: (context, index) {
                  Product product = cartProvider.cartList[index];
                  return CartItem(product: product);
                },
              ),
            ),
            //SizedBox(height: 8),

          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final cartProvider = CartProvider.of(context);
    return Card(
      color: Colors.white,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.kContentColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(product.image, height: 80, width: 80),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          cartProvider.removeFromList(product);
                        },
                        child: Icon(Icons.delete, size: 25, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    product.category,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        "\$${product.price}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kContentColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IncDecButton(
                          onTap: (int count) {
                            cartProvider.productIncDec(count, product);
                          },
                          isColorShouldChange: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
