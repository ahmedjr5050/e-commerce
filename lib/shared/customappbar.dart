import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto/Pages/cheackout.dart';
import 'package:toto/provider/cart.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(211, 164, 255, 193),
              ),
              child: Text(
                "${value.selectedProduct.length}",
                style: const TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Checkout()));
                },
                icon: const Icon(Icons.add_shopping_cart))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            '${value.price}',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
