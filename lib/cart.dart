import 'package:flutter/foundation.dart';
import 'package:test_assignment/model/shoe.dart';

class Cart extends ChangeNotifier {
  final List<Shoe> _shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      imagePath: 'lib/image/zoom_freak.jpg',
      description: 'The forward-thinking design of his latest signed shoe.',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '220',
      imagePath: 'lib/image/air_jordan.jpg',
      description: 'Lace up in shoes that enhance everything you bring to the court.',
    ),
    Shoe(
      name: 'Kd Tyres',
      price: '220',
      imagePath: 'lib/image/Kd_tyres.png',
      description: 'Lace up in shoes that enhance everything you bring to the court.',
    ),
  ];

  final List<Shoe> _userCart = [];

  List<Shoe> get shoeList => List.unmodifiable(_shoeShop);
  List<Shoe> get userCart => List.unmodifiable(_userCart);
  int get cartCount => _userCart.length;

  void addItemToCart(Shoe shoe) {
    _userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    _userCart.remove(shoe);
    notifyListeners();
  }
}