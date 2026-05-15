import 'package:emmercewithprovider/app/app_assets.dart';
import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/models/category_model.dart';
import 'package:emmercewithprovider/models/product.dart';
import 'package:emmercewithprovider/screens/home/widgets/category_widget.dart';
import 'package:emmercewithprovider/screens/home/widgets/custom_app_bar.dart';
import 'package:emmercewithprovider/screens/home/widgets/home_slider.dart';
import 'package:emmercewithprovider/screens/home/widgets/product_card.dart';
import 'package:emmercewithprovider/screens/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int slideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35),
              CustomAppBar(),
              SizedBox(height: 16),
              SearchBarWidget(),
              SizedBox(height: 20),
              HomeSlider(
                onChange: (int p1) {
                  slideIndex = p1;
                  setState(() {});
                },
                currentSlider: slideIndex,
              ),
              SizedBox(height: 20),
              CategoryWidget(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special for You',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Product.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return ProductCardWidget(product: Product.products[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

