import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.jpeg'),
    CategoryModel(categoryName: 'General', image: 'assets/general.jpeg'),
    CategoryModel(categoryName: 'Scince', image: 'assets/science.jpeg'),
    CategoryModel(
        categoryName: 'Entertainment', image: 'assets/entertaiment.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Category_Card(
              category: categories[index],
            );
          },
        ));
  }
}
