import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/widgets/meal_item.dart';

class CategoriesMealsScreen extends StatefulWidget {
//  final String categoriesId;
//  final String categoriesTitle;
//
//  CategoriesMealsScreen({this.categoriesId, this.categoriesTitle});
 final List<Meal> _newUpdatedMealList;

 CategoriesMealsScreen(this._newUpdatedMealList);

  @override
  _CategoriesMealsScreenState createState() => _CategoriesMealsScreenState();
}

class _CategoriesMealsScreenState extends State<CategoriesMealsScreen> {
  String categoriesTitle;
  List<Meal> categoriesMeals;
  bool _lodedInitData = false;

  @override
  void didChangeDependencies() {
    if(!_lodedInitData) {
      final argumentData =
      ModalRoute
          .of(context)
          .settings
          .arguments as Map<String, String>;
      categoriesTitle = argumentData['title'];
      final categoriesId = argumentData['id'];
      categoriesMeals = widget._newUpdatedMealList.where((meal) {
        return meal.categories.contains(categoriesId);
      }).toList();
      _lodedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _deltMeal(var id) {
    setState(() {
      categoriesMeals.removeWhere((meal) => meal.id == id);

    });
  }

  @override
  Widget build(BuildContext context) {
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
            clickRemove: _deltMeal,
          );
        },
        itemCount: categoriesMeals.length,
      ),
    );
  }
}
