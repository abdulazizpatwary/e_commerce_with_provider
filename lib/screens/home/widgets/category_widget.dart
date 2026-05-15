import 'package:emmercewithprovider/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount:CategoryModel.getCategoryModelList.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(CategoryModel.getCategoryModelList[index].image,),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 5,),
                Text(CategoryModel.getCategoryModelList[index].title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
              ],

            );
          }, separatorBuilder: (context,index)=>SizedBox(width: 20,)),
    );
  }
}
