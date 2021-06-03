class Settings {
  bool isGlutenFree; //sem glueten
  bool isLactoseFree; //sem lactose
  bool isVegan; //vegano
  bool isVegetarian; //ve

  Settings(
      {this.isGlutenFree = false, //sem glueten
      this.isLactoseFree = false, //sem lactose
      this.isVegan = false, //vegano
      this.isVegetarian = false //ve
      });
}
