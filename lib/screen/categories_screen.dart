import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/categories_item.dart';
import 'package:mealsapp/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15.0),
      children: DUMMY_CATEGORIES
          .map((value) => CategoriesItem(
                color: value.color,
                title: value.title,
                id: value.id,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300.0,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
    );
  }
}
