import 'package:dio/dio.dart';
import 'package:untitled1/Model/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(
      this.dio
);
  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try  {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=b10f32468996471992a466bf6cc2e610&country=us&category=$category'
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description'],
        );
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}