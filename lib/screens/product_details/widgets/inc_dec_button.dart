import 'package:flutter/material.dart';

class IncDecButton extends StatefulWidget {
   IncDecButton({super.key, required this.onTap, this.isColorShouldChange=false});
  final Function(int) onTap;
  bool isColorShouldChange;
  

  @override
  State<IncDecButton> createState() => _IncDecButtonState();
}

class _IncDecButtonState extends State<IncDecButton> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        GestureDetector(
          onTap: (){
            if(count<=1)return;
            count--;
            widget.onTap(count);
            setState(() {
              
            });
          },
          child: Icon(Icons.remove,color: widget.isColorShouldChange?Colors.black:Colors.white,size: 20,fontWeight: FontWeight.bold,),
        ),
        SizedBox(width: 5,),
        Text(count.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: widget.isColorShouldChange?Colors.black:Colors.white),),
        SizedBox(width: 5,),
        GestureDetector(
          onTap: (){
            if(count>=20)return;
            count++;
            widget.onTap(count);
            setState(() {

            });
          },
          child: Icon(Icons.add,color: widget.isColorShouldChange?Colors.black:Colors.white,size: 20,fontWeight: FontWeight.bold,),
        )
      ],
    );
  }
}
