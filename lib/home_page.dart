import 'package:cookies_app/config/colors.dart';
import 'package:cookies_app/widgets/bottom_bar.dart';
import 'package:cookies_app/widgets/tab_item.dart';
import 'package:flutter/material.dart';

import 'cookie_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: secondaryColor,),
          onPressed: () {},
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
        padding: EdgeInsets.only(left: 20),
        children: [
          SizedBox(height: 15),
          Text('Categories', 
          style:  TextStyle(color: secondaryColor, fontFamily: 'Varela', fontSize: 40),),
          SizedBox(height: 15),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: primaryColor,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45),
            unselectedLabelColor: Color(0XFFCDCDCD),
            tabs: [
              TabItem(title: "Cookies"),
              TabItem(title: "Cookie Cake"),
              TabItem(title: "Ice Cream"),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ]
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}