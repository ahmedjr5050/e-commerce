import 'package:flutter/material.dart';

import 'colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({required this.textbutton,required this.onTab});
String textbutton;
VoidCallback? onTab;
  @override
  Widget build(BuildContext context) {
    return  
            ElevatedButton(
            onPressed:onTab,
            child: Text(
              textbutton,
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNgreen),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
            ));
  }
}