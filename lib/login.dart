import 'package:flutter/material.dart';
import 'package:toto/shared/colors.dart';
import 'package:toto/shared/custom_textfield.dart';

import 'Pages/register.dart';
class Login extends StatelessWidget {
  const Login({super.key});

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
            onPressed: () {},
            child: Text(
              "Sign in",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNgreen),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
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
              onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
              },
              child:  const Text(
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
