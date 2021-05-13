import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {

  final String title;

  const TabItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(this.title, 
      style: TextStyle(
        fontFamily: 'Varela', fontSize: 21),
      ),
    );
  }
}