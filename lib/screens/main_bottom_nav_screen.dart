import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/screens/cart/cart_list_screen.dart';
import 'package:emmercewithprovider/screens/favourite/favourite.dart';
import 'package:emmercewithprovider/screens/home/home_screen.dart';
import 'package:emmercewithprovider/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int currentIndex = 2;
  final List<Widget>screensList=const[
    Scaffold(),
    Favourite(),
    HomeScreen(),
    CartListScreen(),
    Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[currentIndex],
      floatingActionButton: FloatingActionButton(onPressed: (){
        currentIndex=2;
        setState(() {});
      },shape: CircleBorder(),
      backgroundColor: AppColors.kPrimaryColor,
      child: Icon(Icons.home,color: Colors.white,size: 35,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buiBottomAppBar(),
    );
  }

  Widget _buiBottomAppBar() {
    return BottomAppBar(
      elevation: 1,
      height: 60,
      color: Colors.white,
      shadowColor: Colors.pink,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              currentIndex=0;
              setState(() {

              });
            },
            icon: Icon(
              Icons.grid_view_outlined,
              size: 30,
              color: currentIndex == 0
                  ? AppColors.kPrimaryColor
                  : Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {
              currentIndex=1;
              setState(() {

              });
            },
            icon: Icon(
              Icons.favorite_border,
              size: 30,
              color: currentIndex == 1
                  ? AppColors.kPrimaryColor
                  : Colors.grey.shade400,
            ),
          ),
          SizedBox(width: 15,),
          IconButton(
            onPressed: () {
              currentIndex=3;
              setState(() {

              });
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: currentIndex == 3
                  ? AppColors.kPrimaryColor
                  : Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {
              currentIndex=4;
              setState(() {

              });
            },
            icon: Icon(
              Icons.person,
              size: 30,
              color: currentIndex == 4
                  ? AppColors.kPrimaryColor
                  : Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
