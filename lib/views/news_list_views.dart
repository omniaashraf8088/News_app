import 'package:flutter/material.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListViews extends StatelessWidget {
  const NewsListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: NewsTile(),
        );
      }, childCount: 10),
    );
  }
}
