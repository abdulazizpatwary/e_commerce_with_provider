import 'package:emmercewithprovider/app/app_assets.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key, required this.onChange, required this.currentSlider,
  });

  final Function(int)onChange;
  final int currentSlider;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  AppAssets.shirtBannerUrl,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  AppAssets.femaleModelBannerUrl,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  AppAssets.shirtModelBannerUrl,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  AppAssets.womenDressBannerUrl,
                  fit: BoxFit.cover,
                ),

              ],
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            right: 0,
            left: 0,

            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) =>
                    AnimatedContainer(duration: Duration(
                        microseconds: 300), width: currentSlider == index
                        ? 15
                        :8,
                      height: 8,
                      margin: EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentSlider==index?Colors.grey:Colors.transparent,
                          border: Border.all(color: Colors.grey)
                      ),
                    ),
                ),
              ),
            ))
      ],
    );
  }
}
