import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class Category_Card extends StatelessWidget {
  const Category_Card({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill)),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
