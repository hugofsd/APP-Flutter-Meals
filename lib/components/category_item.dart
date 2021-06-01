import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  //referenciando o model para a variavel depois do import
  final Category category;
  //item recebe categoria
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
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
    );
  }
}
