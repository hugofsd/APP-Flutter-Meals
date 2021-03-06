import 'dart:ui';

import 'package:flutter/material.dart';

import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screens.dart';

import 'utils/app_routes.dart';

import 'screens/tabs_screen.dart';
import 'screens/settings_screens.dart';
import 'screens/favorite_screen.dart';

import 'models/meal.dart';
import 'data/dummy_data.dart';
import 'models/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //configurações salvar
  Settings settings = Settings();
  // receber comidas disponiveis, recebe todas de primeira por padrão
  List<Meal> _availableMeals = DUMMY_MEALS;

  List<Meal> _favoriteMeals = [];

  //chamdo quando ocorrer configuração
  void _filterMeals(Settings settings) {
    _availableMeals = DUMMY_MEALS.where((meal) {
      final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
      final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
      final filterVegan = settings.isVegan && !meal.isVegan;
      final filterVegerarian = settings.isVegetarian && !meal.isVegetarian;

      return !filterGluten &&
          !filterLactose &&
          !filterVegan &&
          !filterVegerarian;
    }).toList();
  }

  void _toggleFavorite(Meal meal) {
    setState(() {
      _favoriteMeals.contains(meal)
          ? _availableMeals.remove(meal)
          : _favoriteMeals.add(meal);
    });
  }

  bool _isFavorite(Meal meal) {
    return _favoriteMeals.contains(meal);
  }

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
        AppRoutes.HOME: (ctx) => TabsScreen(_favoriteMeals), //rota principal
        AppRoutes.CATEGORIES_MEALS: (ctx) =>
            CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) =>
            MealDetailScreen(_toggleFavorite, _isFavorite),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(_filterMeals, settings)
      },
    );
  }
}
