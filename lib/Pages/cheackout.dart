import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto/provider/cart.dart';

import 'package:toto/shared/customappbar.dart';

import '../shared/colors.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});
  static String id = 'Checkout';
  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        actions: const [Customappbar()],
        backgroundColor: appbarGreen,
        title: const Text("Checkout"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: value.selectedProduct.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      subtitle: Text(
                          "${value.selectedProduct[index].price} - ${value.selectedProduct[index].loctaion}"),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(value.selectedProduct[index].imgPath),
                      ),
                      title: Text(value.selectedProduct[index].name),
                      trailing: IconButton(
                          onPressed: () {
                            value.delete(value.selectedProduct[index]);
                          },
                          icon: const Icon(Icons.remove)),
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$${value.price}",
              style: const TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
