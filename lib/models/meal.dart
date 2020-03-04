import 'package:flutter/foundation.dart';
import 'package:mealsapp/enum_files/enums_list.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageURL;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal({
    @required this.affordability,
    @required this.complexity,
    @required this.title,
    @required this.id,
    @required this.categories,
    @required this.duration,
    @required this.ingredients,
    @required this.imageURL,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.steps,
  });
}
