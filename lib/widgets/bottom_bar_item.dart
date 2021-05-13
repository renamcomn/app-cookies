import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {

  final IconData icon;
  final Color color;

  const BottomBarItem({Key? key, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      this.icon,
      color: this.color,
    );
  }
}