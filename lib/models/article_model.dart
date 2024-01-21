class ArticleModel{
  final String? image;
  final String?  title;
  final String? subTitle;
  final Sourse sourse;
  ArticleModel({required this.image,required this.title,required this.subTitle,required this.sourse});
}
class Sourse{
  final String? name;
  final String? id;
  Sourse({required this.id,required this.name});

}