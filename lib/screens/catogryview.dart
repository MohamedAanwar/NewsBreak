import 'package:flutter/material.dart';
import 'package:newsapp/components/newslistviewbuilder.dart';

class CategoryView extends StatelessWidget {
  final String cate;
  const CategoryView({super.key, required this.cate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              cat: cate,
            )
          ],
        ),
      ),
    );
  }
}
