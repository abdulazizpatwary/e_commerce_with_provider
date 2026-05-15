import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailsSectionWidget extends StatefulWidget {
  const ProductDetailsSectionWidget({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetailsSectionWidget> createState() =>
      _ProductDetailsSectionWidgetState();
}

class _ProductDetailsSectionWidgetState
    extends State<ProductDetailsSectionWidget> {
  int currentColor = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 100, right: 20, left: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            widget.product.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$${widget.product.price}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 4),
                  Wrap(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Wrap(
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 14),
                            SizedBox(width: 2),
                            Text(
                              widget.product.rate.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        widget.product.review,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: 'Seller: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: widget.product.sellers,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Color',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
          ),
          SizedBox(height: 10),
          Row(
            children: List.generate(
              widget.product.colors.length,
              (index) => GestureDetector(
                onTap: () {
                  currentColor = index;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(microseconds: 300),
                  height: 35,
                  width: 35,
                  padding: currentColor == index ? EdgeInsets.all(2) : null,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: currentColor == index
                        ? Border.all(color: widget.product.colors[index])
                        : null,
                    color: currentColor == index
                        ? Colors.white
                        : widget.product.colors[index],
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.product.colors[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: currentIndex == 0
                      ? AppColors.kPrimaryColor
                      : null,
                  foregroundColor: currentIndex == 0 ? Colors.white : null,
                  padding: currentIndex == 0 ? EdgeInsets.all(12) : null,
                ),
                onPressed: () {
                  currentIndex = 0;
                  setState(() {});
                },
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: currentIndex == 1
                      ? AppColors.kPrimaryColor
                      : null,
                  foregroundColor: currentIndex == 1 ? Colors.white : null,
                  padding: currentIndex == 1 ? EdgeInsets.all(12) : null,
                ),
                onPressed: () {
                  currentIndex = 1;
                  setState(() {});
                },
                child: Text(
                  'Specification',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: currentIndex == 2
                      ? AppColors.kPrimaryColor
                      : null,
                  foregroundColor: currentIndex == 2 ? Colors.white : null,
                  padding: currentIndex == 2 ? EdgeInsets.all(12) : null,
                ),
                onPressed: () {
                  currentIndex = 2;
                  setState(() {});
                },
                child: Text(
                  'Reviews',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          if (currentIndex == 0)
            Text(
              widget.product.description,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          if (currentIndex == 1) Container(),
          if (currentIndex == 2) Container(),
        ],
      ),
    );
  }
}
