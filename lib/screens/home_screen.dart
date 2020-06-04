import 'package:banking_ui/data/data.dart';
import 'package:banking_ui/widgets/account_list.dart';
import 'package:banking_ui/widgets/bottom_nav.dart';
import 'package:banking_ui/widgets/card_carousel.dart';
import 'package:banking_ui/widgets/graph.dart';
import 'package:banking_ui/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//TODO: Step 1. Make Header widget
//TODO: Step 2. Make Graph widget
//TODO: Step 3. Make CardCarousel widget
//TODO: Step 4. Make AccountList widget
//TODO: Step 5. Make BottomNavBar widget
//TODO: Step 6. Smile :)

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf6f6ff),
      body: ListView(
        children: <Widget>[
          Header(user: user),
          Graph(user: user),
          CardCarousel(user: user),
          BankAccountList(user: user),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
