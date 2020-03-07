import 'package:flutter/material.dart';
import 'package:mealsapp/screen/categories_meals_screen.dart';
import 'package:mealsapp/constant/Navigation_name_details.dart';
import 'package:mealsapp/screen/filters_screen.dart';
import 'package:mealsapp/screen/meal_detail_screen.dart';
import 'package:mealsapp/screen/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
//      home: CategoriesScreen(),
      initialRoute: NavigationNameDetails.HOME_ROUTE,
      routes: {
        NavigationNameDetails.HOME_ROUTE: (ctx) => TabsScreen(),
        NavigationNameDetails.CATEGORIES_MEALS_SCREEN: (ctx) => CategoriesMealsScreen(),
        NavigationNameDetails.MEAL_DETAIL_SCREEN: (ctx) => MealDetailScreen(),
        NavigationNameDetails.FILTERS_SCREEN: (ctx) => FiltersScreen(),
      },
//      onGenerateRoute: (setting){
//        print(setting.arguments);
//        if(setting.name == '/...'){
//          return ...;
//        }else if(setting.name == '...'){
//          return ...;
//        }
//        return MaterialPageRoute(builder: (ctx) => ....);
//      },
//    onUnknownRoute: ,
    );
  }
}
