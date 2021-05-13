import 'package:flutter/material.dart';

import 'config/colors.dart';

class DetailPage extends StatelessWidget {

  final assetPath;
  final cookieprice;
  final cookiename;

  const DetailPage({Key? key, this.assetPath, this.cookieprice, this.cookiename}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: secondaryColor,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Pickup", style: TextStyle(fontFamily: 'Varela', color: secondaryColor, fontSize: 20),),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: secondaryColor,), 
            onPressed: () {}
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Cookie', style: TextStyle(fontFamily: 'Varela', fontSize: 42, fontWeight: FontWeight.bold, color: primaryColor),),
          ),
          SizedBox(height: 15.0),
          Hero(
            tag: assetPath, 
            child: Image.asset(
              assetPath,
              height: 150,
              width: 100,
              fit: BoxFit.contain
            )
          ),
          SizedBox(height: 20),
          Center(
            child: Text(cookieprice,
              style: TextStyle(
                color: primaryColor,
                fontFamily: 'Varela',
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(cookiename,
              style: TextStyle(
                color: secondaryColor,
                fontFamily: 'Varela',
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
              textAlign: TextAlign.center,
              style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text('Add to cart',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}