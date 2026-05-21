import 'package:emmercewithprovider/app/app_assets.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Stack(
        children: [
          Image.asset(AppAssets.profilePngUrl,fit: BoxFit.cover,height: size.height,width: size.width,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                height: size.height*0.4,
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(AppAssets.profilePngUrl),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(height: 25,width: 25,decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green[300],

                              ),child: Icon(Icons.check,color: Colors.white,),),
                            )

                          ],
                        ),
                        Wrap(
                          children: [
                            Container(

                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black54),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                              margin: EdgeInsets.only(left: 8),
                              child: Text('Add Friend',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Container(

                              decoration: BoxDecoration(
                                color: Colors.pink,

                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black54),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                              margin: EdgeInsets.only(left: 8),
                              child: Text('Follow',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                            )
                          ],
                        )
                      ],),
                      SizedBox(height: 8,),
                      Text('Islam Saufaaa',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800),),
                      Text('Data Scientist',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black45),),
                      SizedBox(height: 12,),
                      Text('Data science is an interdisciplinary field that uses scientific methods, algorithms, and machine learning',style: TextStyle(fontSize: 16,color: Colors.black45),)
                    ],
                  ),
                ),
              ),),
            ),
          )


        ],
      ),

    );
  }
}
