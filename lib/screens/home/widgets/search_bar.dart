import 'package:emmercewithprovider/app/app_color.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.kContentColor
      ),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
      child: Row(
        children: [
          Icon(Icons.search,size: 30,color: Colors.grey,),
          SizedBox(width: 10,),

          Flexible(
            flex: 4,
            child: TextField(

              decoration: InputDecoration(

                border: InputBorder.none,

                hintText: 'Search',

              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.tune,color: Colors.grey,))
        ],
      ),
    );
  }
}