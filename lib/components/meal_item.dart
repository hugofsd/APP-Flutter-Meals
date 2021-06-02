import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

//func
  void _selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeal, //"click"
      splashColor: Colors.black,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15)), // Borda Retângulo Arredondado
        elevation: 4,
        margin: const EdgeInsets.all(
            10), //espaçamento de 10 entre cada card em todas as direções
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(meal.imageUrl,
                      height: 250, //altura
                      width: double.infinity, //largura espaço disponivel
                      fit: BoxFit.cover),
                ), //define as bordas para o componente
              ],
            ) //para colocar um Widget em cima do outros
          ],
        ),
      ),
    );
  }
}
