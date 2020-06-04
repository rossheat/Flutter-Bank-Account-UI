import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  IconData selectedItem = Icons.timeline;

  List<IconData> itemsList = [
    Icons.timeline,
    Icons.account_balance_wallet,
    Icons.calendar_today,
    Icons.more_horiz
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          onTap: (int index) {
            setState(() {
              selectedItem = itemsList[index];
            });
          },
          currentIndex: itemsList.indexOf(selectedItem),
          items: itemsList.map((icon) {
            return BottomNavigationBarItem(
              icon: selectedItem == icon
                  ? Icon(
                      icon,
                      color: Color(0xFFff2983),
                      size: 17,
                    )
                  : Icon(
                      icon,
                      color: Colors.grey[350],
                      size: 27,
                    ),
              title: Container(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
