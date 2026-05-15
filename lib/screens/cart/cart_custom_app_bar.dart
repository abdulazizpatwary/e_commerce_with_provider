import 'package:flutter/material.dart';

class CartCustomAppBar extends StatelessWidget {
  const CartCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(15)
          ),
            onPressed: (){
            //Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios)),
        Spacer(),
        Text('My Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        Spacer(),
      ],
    );
  }
}
