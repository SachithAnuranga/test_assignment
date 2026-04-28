import 'package:flutter/foundation.dart';
import 'package:test_assignment/model/shoe.dart';

class Cart extends ChangeNotifier{
  //List of Shape for sale
  List<Shoe> shoeShop =[
    Shoe(name: "Zoom Freak", price: '236', imagePath: "lib/image/zoom_freak.jpg", description: "The forward thinking design of his latest signed shoe"),
     Shoe(name: "Air Jordan", price: '220', imagePath: "lib/image/air_jordan.jpg", description: "You've got the hope and the speed-lace up in shoes that enhance what you bring to thecour"),
      Shoe(name: "Kd_tyres", price: '220', imagePath: "lib/image/Kd_tyres.png", description: "You've got the hope and the speed-lace up in shoes that enhance what you bring to thecour"),
  ];

  //list of items in user card
  List<Shoe> userCard = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {return shoeShop;}

  //get cart 
  List<Shoe> getUserCart(){return userCard;}

  //add item to cart
  void addItemToCart(Shoe shoe){
    userCard.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCard.remove(shoe);
    notifyListeners();
  }
}