import 'package:flutter/widgets.dart';

class DetailsImageSlidet extends StatelessWidget {
  const DetailsImageSlidet({
    super.key, required this.image, required this.onChange,
  });
  final String image;
  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 250,
      child: PageView.builder(
        //scrollDirection: Axis.horizontal,
        //allowImplicitScrolling: true,
        //physics: ClampingScrollPhysics(),

          onPageChanged: onChange,
          itemBuilder: (context,index){
            return Hero(
                tag: image,
                child: Image.asset(image));

          }),);
  }
}