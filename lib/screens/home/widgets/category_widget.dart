import 'package:emmercewithprovider/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({
    super.key, required this.onTap,
  });
  final Function(int) onTap;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int _selectedIndex=0;
  bool isHighLighted=false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        itemCount:CategoryModel.getCategoryModelList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: ()async{
                _selectedIndex=index;
                isHighLighted=true;
                widget.onTap(_selectedIndex);
                setState(() {

                });
                await Future.delayed(Duration(seconds: 2));
                isHighLighted=false;

                setState(() {

                });
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ((_selectedIndex==index)&&isHighLighted)?Colors.blue[200]:Colors.transparent
                ),
                child: Column(
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

                ),
              ),
            );
          }, ),
    );
  }
}
