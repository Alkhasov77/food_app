import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Set MT",
      price: "20",
      imagePath: "lib/images/food_1.png",
      rating: "5",
    ),
    Food(
      name: "Su-MT",
      price: "3",
      imagePath: "lib/images/food_2.png",
      rating: "4.88",
    ),
    Food(
      name: "Fila",
      price: "8",
      imagePath: "lib/images/food1.png",
      rating: "4.99",
    ),
    Food(
      name: "Set King",
      price: "22",
      imagePath: "lib/images/food_3.png",
      rating: "4.98",
    ),
    Food(
      name: "Assorti Su",
      price: "22",
      imagePath: "lib/images/food_4.png",
      rating: "5",
    ),
  ];

  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
