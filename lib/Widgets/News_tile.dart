import 'package:flutter/material.dart';
import 'package:untitled1/Model/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.articleModel}) : super(key: key);

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(articleModel.image??'https://tse2.mm.bing.net/th?id=OIP.-Pc55P47lUl7hhhj7Tzv1AHaEK&pid=Api&P=0&h=220',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          articleModel.subTitle?? '',
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
