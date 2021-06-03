import 'package:flutter/material.dart';

import '../screens/categories_screens.dart';
import '../screens/favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, //para definir a quantidade de abas
      child: Scaffold(
        appBar: AppBar(
          title: Text('Refeições'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreens(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
