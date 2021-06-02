import 'package:flutter/material.dart';

import '../models/category.dart';

import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  //referenciando o model para a variavel depois do import
  final Category category;
  //item recebe categoria
  const CategoryItem(this.category);

//navigator
  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
        //rota
        AppRoutes.CATEGORIES_MEALS,
        //passando os dados via arguments
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    //InkWell para saber se o usuário cliclou
    return InkWell(
      onTap: () => _selectCategory(context), // quando o user clica
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.black,
      child: Container(
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.title,
        ),
        padding: EdgeInsets.all(15), //centralizar o text. "preenchimento"
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), // borda circular
            gradient: LinearGradient(
                colors: [
                  category.color.withOpacity(0.3),
                  category.color,
                ],
                //alinhamento
                begin: Alignment.topLeft, //começo da grid
                end: Alignment.bottomRight // canto inferior direito

                )),
      ),
    ); //pois o contairner n recebe OnPrees de click
  }
}
