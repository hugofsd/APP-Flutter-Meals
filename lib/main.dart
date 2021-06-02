import 'dart:ui';

import 'package:flutter/material.dart';
import 'screens/categories_screens.dart';

import 'screens/categories_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      home: CategoriesScreens(),
      //rotas
      routes: {'/categories-meals': (ctx) => CategoriesMealsScreen()},
    );
  }
}
