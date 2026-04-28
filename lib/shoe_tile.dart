import 'package:flutter/material.dart';
import 'package:test_assignment/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final VoidCallback? onAddToCart;

  const ShoeTile({
    super.key,
    required this.shoe,
    this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          const SizedBox(height: 10),

          Image.asset(
            shoe.imagePath,
            width: 110,
            height: 110,
            fit: BoxFit.contain,
          ),

          Text(
            shoe.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          Text('\$${shoe.price}', style: const TextStyle(color: Colors.grey)),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: onAddToCart,
                child: const Text('Add'),
              ),
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}