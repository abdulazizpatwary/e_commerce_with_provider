import 'package:emmercewithprovider/app/app_color.dart';
import 'package:flutter/material.dart';

class AppBarActionButton extends StatelessWidget {
  const AppBarActionButton({
    super.key, required this.icon, required this.onTap,
  });
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 30,
        width: 30,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.kContentColor
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon,size: 25,),
        ),
      ),
    );
  }
}