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
    Food(
      name: "Tuna Sashimi",
      price: "300 000",
      imagePath: "assets/images/waiter5.jpg",
      announcement:
          "Нежный и свежий тунец для ценителей японской кухни!",
    ),
    Food(
      name: "Margherita Pizza",
      price: "250 000",
      imagePath: "assets/images/waiter6.jpg",
      announcement:
          "Классическая итальянская пицца с сочными помидорами и нежным моцарелла!",
    ),
    Food(
      name: "California Roll",
      price: "280 000",
      imagePath: "assets/images/waiter7.jpg",
      announcement:
          "Изысканный ролл с крабовым мясом и авокадо, завернутый в нори и рис!",
    ),
    Food(
      name: "Cheeseburger",
      price: "180 000",
      imagePath: "assets/images/waiter8.jpg",
      announcement:
          "Сочный говяжий бургер с ароматным сыром и свежими овощами!",
    ),
  ];

  final List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }
}
