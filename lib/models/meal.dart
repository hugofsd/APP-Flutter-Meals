import 'package:flutter/material.dart';

//complexitade
enum Complexity {
  Simple,
  Medium,
  Difficult,
}

//custo
enum Cost {
  Cheap, //barato
  Fair, //ok
  Expensive, //caro d+ kkkk slc meu irmão!
}

class Meal {
  final String id;
  final List<String> categories; //lista de categorias
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps; //passos
  final int duration;
  final bool isGlutenFree; //sem glueten
  final bool isLactoseFree; //sem lactose
  final bool isVegan; //vegano
  final bool isVegetarian; //vegetariano
  final Complexity complexity;
  final Cost cost;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.complexity,
    @required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simples';
      case Complexity.Medium:
        return 'Normal';
      case Complexity.Difficult:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.Cheap:
        return 'Barato';
      case Cost.Fair:
        return 'Justo';
      case Cost.Expensive:
        return 'Caro';
      default:
        return 'Desconhecido';
    }
  }
}
