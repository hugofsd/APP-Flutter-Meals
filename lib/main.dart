import 'dart:ui';

import 'package:flutter/material.dart';
import 'screens/categories_screens.dart';

import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screens.dart';

import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      // home: CategoriesScreens(),
      //rotas
      // initialRoute: , para rota inical é outra auternativa
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreens(), //rota principal
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen()
      },
      //rotas dinamicas
      // onGenerateRoute: (settings){
      //   if (settings. == '/alguma-coisa')

      // },
    );
  }
}
