import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../widget/category_card.dart';
class CategoryListViews extends StatelessWidget {
   CategoryListViews({super.key});
  List<CategoryModels>categories=[
    CategoryModels(text: 'Spor', image: 'assets/images/photo.webp'),
    CategoryModels(text: 'Spor', image: 'assets/images/photo.webp'),
    CategoryModels(text: 'Spor', image: 'assets/images/photo.webp'),
    CategoryModels(text: 'Spor', image: 'assets/images/photo.webp'),
    CategoryModels(text: 'Spor', image: 'assets/images/photo.webp'),
    CategoryModels(text: 'Spor', image: 'assets/images/photo.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
     height: 130  ,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection:Axis.horizontal,
        itemBuilder: (context,index){
        return CategoryCard(category: categories[index],);
      },
      ),
    );
  }
}
