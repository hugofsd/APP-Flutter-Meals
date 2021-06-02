import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //convertendo o argumento para categoria, rota
    final category = ModalRoute.of(context).settings.arguments as Category;
    //Scaffold: andaime
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(child: Text('Receitar por categoria ${category.id}')),
    );
  }
}
