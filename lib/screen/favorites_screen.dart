import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _filterMealList;

  FavoritesScreen(this._filterMealList);

  @override
  Widget build(BuildContext context) {
    if(_filterMealList == null){
      return Container(
        child: Text('You have no Favorite yet!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _filterMealList[index].id,
            title: _filterMealList[index].title,
            affordability: _filterMealList[index].affordability,
            complexity: _filterMealList[index].complexity,
            duration: _filterMealList[index].duration,
            imageUrl: _filterMealList[index].imageUrl,
          );
        },
        itemCount: _filterMealList.length,
      );
    }

  }
}
