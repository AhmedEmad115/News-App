import 'package:flutter/material.dart';
import 'package:untitled1/Model/Category_model.dart';
import 'package:untitled1/Widgets/Category_view.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
 final List<CategoryModel> categories = const [
   CategoryModel(
       image: 'https://www.bordbia.ie/globalassets/bordbia.ie/about/man-in-a-business-suit-on-a-laptop',
       categoryName: 'Business'
   ),
   CategoryModel(
       image: 'https://www.popoptiq.com/wp-content/uploads/2019/01/1-26-1.jpg',
       categoryName: 'Entertainment'
   ),
   CategoryModel(
       image: 'https://wallpaperaccess.com/full/624111.jpg',
       categoryName: 'Health'
   ),
   CategoryModel(
       image: 'https://tse3.mm.bing.net/th?id=OIP.6bL7-n9ofveiK1gzXhCWEAHaEK&pid=Api&P=0&h=220',
       categoryName: 'Science'
   ),
   CategoryModel(
       image: 'https://tse4.mm.bing.net/th?id=OIP.K8urvQKqHarydD5ixvdQBAHaFI&pid=Api&P=0&h=220',
       categoryName: 'Technology'
   ),
   CategoryModel(
       image: 'https://tse3.mm.bing.net/th?id=OIP.Hd69LCQqsixT1ptZhMW-RAHaE-&pid=Api&P=0&h=220',
       categoryName: 'Sports'
   ),
   CategoryModel(
       image: 'https://tse2.mm.bing.net/th?id=OIP.-Pc55P47lUl7hhhj7Tzv1AHaEK&pid=Api&P=0&h=220',
       categoryName: 'General'
   ),
 ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index){
            return CategoryView(
              category: categories[index],
            );
          })
    );
  }
}