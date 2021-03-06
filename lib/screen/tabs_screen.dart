import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/screen/categories_screen.dart';
import 'package:mealsapp/screen/favorites_screen.dart';
import 'package:mealsapp/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> _FilterMealList;

  TabsScreen(this._FilterMealList);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];

  int _selectedIndexPage = 0;

  void _onTapIndex(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {'page': CategoriesScreen(), 'title': 'Categories'},
      {'page': FavoritesScreen(widget._FilterMealList), 'title': 'Favorites'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedIndexPage]['title']),
      ),
      body: _pages[_selectedIndexPage]['page'],
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapIndex,
        currentIndex: _selectedIndexPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
        ],
      ),
    );
  }
}

//class _TabsScreenState extends State<TabsScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return DefaultTabController(
//      length: 2,
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text('Tabs'),
//          bottom: TabBar(tabs: <Widget>[
//            Tab(
//              icon: Icon(Icons.category),
//              text: 'Categories',
//            ),
//            Tab(
//              icon: Icon(Icons.star),
//              text: 'Favorites',
//            ),
//          ]),
//        ),
//        body: TabBarView(
//          children: <Widget>[
//            CategoriesScreen(),
//            FavoritesScreen(),
//          ],
//        ),
//      ),
//    );
//  }
//}
