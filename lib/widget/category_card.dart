import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key, required this.category,//required this.text
  });
 CategoryModels category;
  //String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 140,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(
              image: AssetImage(category.image),
             // fit: BoxFit.fill
          ),
        ),
        child:  Center(
            child: Text(
          category.text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
