import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.hinttext, required this.secure, required this.textInputType});
  bool secure = false;
  final TextInputType textInputType;
  String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8),
        hintText: hinttext,
        filled: true,
        //حذف الخط الى تحت
        enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(
          context,
        )),
        //this use to change Focuse
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
