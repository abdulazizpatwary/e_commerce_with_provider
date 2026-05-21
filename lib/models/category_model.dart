import 'package:emmercewithprovider/app/app_assets.dart';

class CategoryModel {
  final String title;
  final String image;

  CategoryModel({required this.title, required this.image});
  static List<CategoryModel> get getCategoryModelList{
    return [
      CategoryModel(title: 'All', image: AppAssets.beautyProductsUrl),
      CategoryModel(title: 'Shoes', image: AppAssets.shoeUrl),
      CategoryModel(title: 'Beauty', image: AppAssets.beautyProductsUrl),
      CategoryModel(title: "women's\nFashion", image: AppAssets.womensFashionUrl),
      CategoryModel(title: 'Jewelery', image: AppAssets.jewelleryFashionUrl),
      CategoryModel(title: "men's\nFashion", image: AppAssets.mensFashionUrl),
    ];
  }
}