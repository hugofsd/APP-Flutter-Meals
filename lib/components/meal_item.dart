import 'package:flutter/material.dart';

import '../models/meal.dart';

import '../utils/app_routes.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

//func
  void _selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.MEAL_DETAIL,
      arguments: meal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context), //"click"
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
                ),
                Positioned(
                  bottom: 20, // posicionamento
                  right: 10, //posicionamento
                  child: Container(
                    width: 300,
                    color: Colors.black54, // fundo com opacidade
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      meal.title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      softWrap: true, //permitir quebra de linha,
                      overflow: TextOverflow.fade, //overflow bonitin
                    ),
                  ), //define as bordas para o componente
                ) //ancoramento
              ],
            ), //para colocar um Widget em cima do outros
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround, // espaço entre as linhas
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.schedule), //icon de relogio
                        SizedBox(width: 6),
                        Text('${meal.duration} min '),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.work), //icon
                        SizedBox(width: 6),
                        Text(meal.complexityText), //COMPLEXIDADE
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money), //icon
                        SizedBox(width: 6),
                        Text(meal.costText), //COMPLEXIDADE
                      ],
                    )
                  ],
                )) //espaço para string
          ],
        ),
      ),
    );
  }
}
