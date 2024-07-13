import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/model/food.dart';

class Shop with ChangeNotifier {
  List<Food> foodMenu = [];
  List<Food> favorites = [];

  void addToFavorites(Food food) {
    favorites.add(food);
    notifyListeners();
  }

  void removeFromFavorites(Food food) {
    favorites.remove(food);
    notifyListeners();
  }
}
