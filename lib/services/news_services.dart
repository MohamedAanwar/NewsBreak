import 'package:dio/dio.dart';
import 'package:newsapp/model/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<ArticleModel>> getGeneralNews({required String Category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=b209141d11f04fc190c038400e36d55a&category=$Category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> arm = [];
      for (var article in articles) {
        ArticleModel ar = ArticleModel(article['urlToImage'], article['title'],
            article['description'], article['url']);
        arm.add(ar);
      }
      return arm;
    } catch (e) {
      return [];
    }
  }
}
