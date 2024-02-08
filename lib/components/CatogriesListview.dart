import 'package:flutter/material.dart';
import 'package:newsapp/components/catogroycard.dart';
import 'package:newsapp/model/CatogoryModel.dart';

class CatogriesListview extends StatelessWidget {
  const CatogriesListview({super.key});
  final List<CategoryModel> cm = const [
    CategoryModel("assets/business.avif", "Business"),
    CategoryModel("assets/entertaiment.avif", "Entertainment"),
    CategoryModel("assets/general.avif", "General"),
    CategoryModel("assets/health.avif", "Health"),
    CategoryModel("assets/science.avif", "Science"),
    CategoryModel("assets/sports.avif", "Sports"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cm.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: CatogryCard(
              cmodel: cm[index],
            ),
          );
        },
      ),
    );
  }
}
