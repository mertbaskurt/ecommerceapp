import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Blazer',
        price: '90',
        imagePath: 'lib/images1/blazer.png',
        description: 'cool whites'),
    Shoe(
        name: 'Kyrie',
        price: '250',
        imagePath: 'lib/images1/kyrie.png',
        description: 'kyrie go ahead'),
    Shoe(
        name: 'Green Dunk',
        price: '140',
        imagePath: 'lib/images1/jordan.png',
        description: 'grass'),

        Shoe(
        name: 'Black Dunk',
        price: '140',
        imagePath: 'lib/images1/dunk.png',
        description: 'grass'),
        
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
