import 'package:flutter/material.dart';
import 'package:toto/Pages/home.dart';
import 'package:toto/Pages/register.dart';

import '../shared/colors.dart';
import '../shared/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static String id = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 64,
        ),
        CustomTextField(
            hinttext: "Enter your Email :",
            secure: false,
            textInputType: TextInputType.emailAddress),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
            hinttext: "Enter your Password :",
            secure: true,
            textInputType: TextInputType.number),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePage.id);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNgreen),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
            ),
            child: const Text(
              "Sign in",
              style: TextStyle(fontSize: 19, color: Colors.white),
            )),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?'),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUp.id);
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          ],
        )
      ]),
    ));
  }
}
