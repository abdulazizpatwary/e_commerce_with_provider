import 'package:emmercewithprovider/screens/home/widgets/app_bar_action_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarActionButton(icon: Icons.grid_view, onTap: () {  },),
        AppBarActionButton(icon: Icons.notifications_none_sharp, onTap: () {  },),
      ],
    );
  }
}
