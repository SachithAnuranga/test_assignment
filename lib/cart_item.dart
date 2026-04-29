import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_assignment/cart.dart';
import 'model/shoe.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe; // ✅ define shoe

  const CartItem({
    super.key,
    required this.shoe,
  });

  void removeItemFromCart(BuildContext context) {
    Provider.of<Cart>(context, listen: false)
        .removeItemFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile( // ✅ correct widget
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Text('\$${shoe.price}'), // ✅ correct param
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => removeItemFromCart(context),
        ),
      ),
    );
  }
}