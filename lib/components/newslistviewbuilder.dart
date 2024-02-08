import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/components/newstilelistviews.dart';
import 'package:newsapp/model/article_model.dart';

import '../services/news_services.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String? cat;
  const NewsListViewBuilder({
    super.key,
    this.cat,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getGeneralNews(Category: widget.cat!);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Oops...Sorry, something went wrong'),
            );
          } else {
            return const SliverToBoxAdapter(
              child:
                  Center(child: CircularProgressIndicator(color: Colors.black)),
            );
          }
        });
  }
}
