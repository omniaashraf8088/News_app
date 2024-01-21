import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices{
  final Dio dio;
  NewsServices(this.dio);
   Future<List<ArticleModel>> getNews()async{
     var resonse=await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=9027f19923d04cdd9d0274414aae86f7');
      Map<String,dynamic> jsonData= resonse.data;
      List<dynamic>articles=jsonData['articles'];
     List<ArticleModel>articleList=[];
     for(var article in articles){
       ArticleModel articalModel=ArticleModel(image: article['urlToImage'], title: article['title'],
           subTitle: article['description'], sourse: Sourse(id: article['source']['id'], name: article['source']['name']));
       articleList.add(articalModel);
     }
     return articleList;

   }
}