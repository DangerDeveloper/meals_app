import 'package:flutter/material.dart';
import 'package:mealsapp/dummy_data.dart';
import 'package:mealsapp/widgets/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
//  final String categoriesId;
//  final String categoriesTitle;
//
//  CategoriesMealsScreen({this.categoriesId, this.categoriesTitle});

  @override
  Widget build(BuildContext context) {
    final argumentData =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoriesTitle = argumentData['title'];
    final categoriesId = argumentData['id'];
    final categoriesMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoriesId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoriesTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoriesMeals[index].id,
            title: categoriesMeals[index].title,
            affordability: categoriesMeals[index].affordability,
            complexity: categoriesMeals[index].complexity,
            duration: categoriesMeals[index].duration,
            imageUrl: categoriesMeals[index].imageUrl,
          );
        },
        itemCount: categoriesMeals.length,
      ),
    );
  }
}
