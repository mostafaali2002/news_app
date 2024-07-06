import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => CategoriesListView(),
                    childCount: 10))
          ],
        ));
  }
}
