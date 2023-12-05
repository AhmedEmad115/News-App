import 'package:flutter/material.dart';
import 'package:untitled1/Widgets/news_list_view.dart';
import 'package:untitled1/Widgets/news_list_view_builder.dart';

class CategoryInsideView extends StatelessWidget {
  const CategoryInsideView({Key? key, required this.category}) : super(key: key);
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category),
        ],
      )
    );
  }
}
