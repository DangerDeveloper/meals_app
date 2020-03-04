import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(categoriesTitle),
      ),
      body: Text('CategoriesMealsScreen'),
    );
  }
}
