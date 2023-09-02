import 'package:flutter/material.dart';
import 'package:toto/login.dart';
import '../shared/custom_button.dart';
import '../shared/custom_textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
static String id = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomTextField(
              hinttext: "Enter Your username:",
              secure: false,
              textInputType: TextInputType.emailAddress),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
              hinttext: "Enter Your Email:",
              secure: false,
              textInputType: TextInputType.emailAddress),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
              hinttext: "Enter Your Password:",
              secure: false,
              textInputType: TextInputType.number),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              textbutton: "Register",
              onTab: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              }),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(' have an account?'),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
