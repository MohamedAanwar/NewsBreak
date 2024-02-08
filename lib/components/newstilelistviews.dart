import 'package:flutter/material.dart';
import 'package:newsapp/components/news_tile.dart';
import 'package:newsapp/model/article_model.dart';

class NewsTileListView extends StatelessWidget {
  List<ArticleModel> articles = [];
  NewsTileListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return NewsTile(
          articleModel: articles[index],
        );
      }),
    );
  }
}
