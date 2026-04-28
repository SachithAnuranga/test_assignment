import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_assignment/cart.dart';
import 'package:test_assignment/shoe_tile.dart';

class ShopPageState extends StatefulWidget {
  @override
  State<ShopPageState> createState() => _ShopPageStateState();
}

class _ShopPageStateState extends State<ShopPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: Consumer<Cart>(
          builder: (context, cart, child) {
            return Column(
              children: [

                // SEARCH BAR
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Search', style: TextStyle(color: Colors.grey)),
                      Icon(Icons.search),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // HEADER
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Hot Picks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // 🔥 HORIZONTAL SHOE LIST (FIXED)
                SizedBox(
                  height: 260, // important for proper layout
                  child: ListView.builder(
  scrollDirection: Axis.horizontal,
  physics: const BouncingScrollPhysics(), // 👈 ADD THIS
  padding: const EdgeInsets.symmetric(horizontal: 16),
  itemCount: cart.getShoeList().length,
  itemBuilder: (context, index) {
    final shoe = cart.getShoeList()[index];

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ShoeTile(
        shoe: shoe,
        onAddToCart: () {
          cart.addItemToCart(shoe);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${shoe.name} added to cart')),
          );
        },
      ),
    );
  },
),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}