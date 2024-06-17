import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/model/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "400 000",
      imagePath: "assets/images/waiter1.jpg",
      announcement:
          "Попробуйте нашу аппетитную пиццу с пикантным пепперони и сыром моцарелла!",
    ),
    Food(
      name: "Pepperoni Pizza",
      price: "200 00",
      imagePath: "assets/images/waiter2.jpg",
      announcement:
          "Удивите свой вкус ананасовым ароматом нашей освежающей пиццы с сочным томатным соусом!",
    ),
    Food(
      name: "Pizza Pineapple",
      price: "Договорная",
      imagePath: "assets/images/waiter3.jpg",
      announcement:
          "Наслаждайтесь изысканными роллами из свежего лосося в нашем уютном ресторане!",
    ),
    Food(
      name: "Bonito Sushi Rolls",
      price: "Договорная",
      imagePath: "assets/images/waiter4.jpg",
      announcement:
          "Попробуйте нашу аппетитную пиццу с пикантным пепперони и сыром моцарелла!",
    ),
  ];
  final List<Food> _cart = [];
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;
  void addToCart(Food foodItem, int guantity) {
    for (int i = 0; i < guantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }
}
