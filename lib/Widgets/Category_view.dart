import 'package:flutter/material.dart';
import 'package:untitled1/Model/Category_model.dart';
import 'package:untitled1/Widgets/category_inside_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)
        {
          return CategoryInsideView(
            category: category.categoryName,
          );
        },
        ),);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(category.image)),
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text(category.categoryName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
      ),
    );
  }
}
