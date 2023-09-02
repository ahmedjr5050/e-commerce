import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  CustomListView({required this.name,required this.onTab,required this.shapeicom});
 final String name;
  final IconData shapeicom;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: ListTile(
        title: Text(name),
        leading: Icon(shapeicom),
      ),
    );
  }
}
