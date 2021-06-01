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
    );
  }
}
