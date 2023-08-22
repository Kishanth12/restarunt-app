import 'package:flutter/material.dart';
import 'package:restarunt_app/models/food.dart';

class Shop extends ChangeNotifier{
  //food menu
  final List<Food> _foodMenu = [
    Food(
        name: 'Nigiri',
        price: '21.00',
        imagePath: 'lib/images/nigiri.png',
        rating: '4.9'),
    Food(
        name: 'Tuna',
        price: '51.00',
        imagePath: 'lib/images/tuna.png',
        rating: '4.0'),
  ];
  //customer cart
  List<Food> _cart = [];
  //getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }
  //remove from cart
  void removeFromCart(Food food){
    _cart.remove(food);
     notifyListeners();
  }
 
}