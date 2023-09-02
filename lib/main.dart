import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto/Pages/cheackout.dart';
import 'package:toto/Pages/home.dart';

import 'package:toto/provider/cart.dart';

import 'Pages/login.dart';
import 'Pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false ,
        routes: {
          Login.id: (context) => const Login(),
          SignUp.id: (context) => const SignUp(),
          HomePage.id: (context) => const HomePage(),
          Checkout.id: (context) => const Checkout(),
        },
        initialRoute: Login.id,
      ),
    );
  }
}
