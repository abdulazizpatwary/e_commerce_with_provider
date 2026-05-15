import 'package:emmercewithprovider/app/app_assets.dart';
import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/models/product.dart';
import 'package:emmercewithprovider/screens/product_details/widgets/AddToCartWidget.dart';
import 'package:emmercewithprovider/screens/product_details/widgets/details_custom_app_bar.dart';
import 'package:emmercewithprovider/screens/product_details/widgets/product_details_imageslider.dart';
import 'package:emmercewithprovider/screens/product_details/widgets/product_details_section_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final Product product;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kContentColor,
      floatingActionButton:AddToCartWidget(product: widget.product,),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 10,),
            DetailsCustomAppBar(),
            DetailsImageSlidet(image: widget.product.image, onChange: (currentIndex) {
              this.currentIndex=currentIndex;
              setState(() {});
            },),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index)=>AnimatedContainer(duration: Duration(microseconds: 300),
              height: 8,
              width: currentIndex==index?15:8,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: currentIndex==index?Colors.black:Colors.transparent,
                  border: Border.all(color: Colors.black)
                ),
              ),),
            ),
            SizedBox(height: 10,),
            ProductDetailsSectionWidget(product:  widget.product),
        
          ],
        ),
      )),
    );
  }
}





