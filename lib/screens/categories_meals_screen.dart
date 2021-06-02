import 'package:flutter/material.dart';
import '../models/category.dart';

//import dos dados
import '../data/dummy_data.dart';

//importando o componentes Ref
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //convertendo o argumento para categoria, rota
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    //Scaffold: andaime
    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
        ),
        body: ListView.builder(
            itemCount: categoryMeals.length, //quantidade de elementos
            itemBuilder: (ctx, index) {
              return MealItem(categoryMeals[index]);
            }));
  }
}
