import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          width: double.infinity,
          height: 250,
          child: CachedNetworkImage(
            imageUrl: articleModel.image ??
                "https://houseoffamuir-static.myshopblocks.com/images/2022/03/contain/512x512/bdc0c26c0204190acd38fb13fba6df3e.jpg",
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress)),
            errorWidget: (context, url, ErrorDescription) => Icon(Icons.error),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () async {
            final Uri _url = Uri.parse(articleModel.URL);
            if (!await launchUrl(_url)) {
              throw Exception('Could not launch $_url');
            }
          },
          child: Text(
            articleModel.tittle,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                height: 1.2,
                decoration: TextDecoration.underline),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          articleModel.subTittle != null
              ? articleModel.subTittle!
              : "No Description",
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            height: 1.2,
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
