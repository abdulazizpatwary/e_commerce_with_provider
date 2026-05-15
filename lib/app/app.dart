import 'package:emmercewithprovider/provider/cart_provider.dart';
import 'package:emmercewithprovider/screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>CartProvider())
    ],
      child: MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),

      ),
      home: const MainBottomNavScreen(),
    ),);
  }
}
