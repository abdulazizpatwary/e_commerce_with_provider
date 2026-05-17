import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/models/product.dart';
import 'package:emmercewithprovider/provider/favourite_provider.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final FavouriteProvider favouriteProvider = FavouriteProvider.of(context);

    return Scaffold(
      backgroundColor: AppColors.kContentColor,
      appBar: AppBar(title: Text('Favourite'), centerTitle: true),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        itemCount: favouriteProvider.favouriteList.length,
        itemBuilder: (context, index) {
          Product product = favouriteProvider.favouriteList[index];
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
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
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                favouriteProvider.removeFromList(product);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Icon(Icons.delete, size: 25, color: Colors.red),
                              ),
                            ),
                          ],
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
