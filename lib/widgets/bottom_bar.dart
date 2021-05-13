import 'package:cookies_app/config/colors.dart';
import 'package:cookies_app/widgets/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6,
      color: Colors.transparent,
      elevation: 9,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 40, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  BottomBarItem(icon: Icons.home, color: primaryColor),
                  BottomBarItem(icon: Icons.person_outline, color: secondaryColor),

                ],
              ),
            ),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 40, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  BottomBarItem(icon: Icons.search, color: secondaryColor),
                  BottomBarItem(icon: Icons.shopping_basket, color: secondaryColor),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}