// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto/Pages/cheackout.dart';
import 'package:toto/Pages/details.dart';
import 'package:toto/Pages/login.dart';
import 'package:toto/models/items.dart';
import 'package:toto/provider/cart.dart';
import 'package:toto/shared/customappbar.dart';
import 'package:toto/shared/customlistview.dart';

import '../../shared/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: items[index]),
                      ));
                },
                child: GridTile(
                  footer: GridTileBar(
                    trailing: Consumer<Cart>(
                      builder: (context, value, child) {
                        return IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            value.add(items[index]);
                          },
                          icon: Icon(Icons.add),
                        );
                      },
                    ),
                    leading: Text('\$12.99'),
                    title: Text(""),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgPath)),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/background.png'),
                        fit: BoxFit.fill)),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('assets/img/ahmed.jpg'),
                ),
                accountName: Text('Ahmed Sabry'),
                accountEmail: Text("sabahmed81@gmail.com")),
            CustomListView(name: 'Home', onTab: () {
                  Navigator.popAndPushNamed(context, HomePage.id);
            }, shapeicom: Icons.home),
            CustomListView(
                name: 'My products',
                onTab: () {
                  Navigator.pushNamed(context, Checkout.id);
                },
                shapeicom: Icons.shopping_cart),
            CustomListView(
                name: "About", onTab: () {}, shapeicom: Icons.help_center),
            CustomListView(
                name: "Logout",
                onTab: () {
                  Navigator.pushNamed(context, Login.id);
                },
                shapeicom: Icons.exit_to_app),
            SizedBox(
              height: 300,
            ),
            Text(
              'Developer by Ahmed Sabry @ 2023',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: BTNgreen,
          title: Text("Home"),
          actions: [Customappbar()]),
    );
  }
}
