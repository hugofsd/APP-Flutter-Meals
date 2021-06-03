import 'package:flutter/material.dart';

import '../screens/categories_screens.dart';
import '../screens/favorite_screen.dart';

import '../components/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = [
    CategoriesScreens(),
    FavoriteScreen(),
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refeições'),
      ),
      drawer: MaindDrawer(),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex, //reconhecer tab selecionada
        // backgroundColor: Theme.of(context).primaryColor,
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('Categorias')),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text('Favoritos')),
        ],
      ),
    );
  }
}
