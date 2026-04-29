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
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image fills available space — no fixed height needed
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              shoe.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 4),

          // Price
          Text(
            '\$${shoe.price}',
            style: const TextStyle(color: Colors.grey, fontSize: 13),
          ),
          const SizedBox(height: 12),

          // Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: onAddToCart,
                child: const Text('Add to cart', style: TextStyle(fontSize: 13)),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}