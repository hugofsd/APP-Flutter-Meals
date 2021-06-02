import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final Category category;
  const CategoriesMealsScreen(this.category);
  @override
  Widget build(BuildContext context) {
    //Scaffold: andaime
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(child: Text('Receitar por categoria ${category.id}')),
    );
  }
}
