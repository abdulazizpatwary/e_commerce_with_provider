import 'package:flutter/material.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15)
            ),
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: (){}, icon: Icon(Icons.share),
          ),
          SizedBox(width: 8,),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: (){}, icon: Icon(Icons.favorite_outline),
          ),

        ],
      ),

    );
  }
}
