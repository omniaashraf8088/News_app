import 'package:flutter/material.dart';
import 'package:news_app/views/news_list_views.dart';

import 'category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
                SliverToBoxAdapter(
                  child: CategoryListViews(),
                ),
                 const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                 const NewsListViews(),
              ],

      ),
    );
  }
}
