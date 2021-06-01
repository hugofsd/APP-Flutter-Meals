import 'package:flutter/material.dart';

import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreens extends StatelessWidget {
  // const CategoriesScreens({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos cozinhar?'),
        // backgroundColor: Colors.red[400],
      ),
      body: GridView(
        padding: const EdgeInsets.all(25), //espaçamento nas lateráis
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //tamanho de cada elemento
          childAspectRatio: 3 / 2, // 1.5//proporção de cada elemento
          crossAxisSpacing: 20, //espaçamento no eixo cruzado
          mainAxisSpacing: 20,
        ), // para organizar as grides, rolagem e scroll
        //cat: categoria que recebe uma lista(toList)
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    ); //grade
  }
}
