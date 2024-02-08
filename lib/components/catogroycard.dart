import 'package:flutter/material.dart';
import 'package:newsapp/model/CatogoryModel.dart';
import 'package:newsapp/screens/catogryview.dart';

class CatogryCard extends StatelessWidget {
  const CatogryCard({super.key, required this.cmodel});
  final CategoryModel cmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryView(
                      cate: cmodel.text,
                    )));
      },
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(cmodel.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(6),
          color: Colors.amber,
        ),
        child: Center(
            child: Text(
          cmodel.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        )),
      ),
    );
  }
}
