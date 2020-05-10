import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List<NavigationItem> navItems = [
    NavigationItem(icon: Icon(Icons.home), title: Text('Home')),
    NavigationItem(icon: Icon(Icons.favorite_border), title: Text('Favorites')),
    NavigationItem(icon: Icon(Icons.card_travel), title: Text('Wallet')),
    NavigationItem(icon: Icon(Icons.person_outline), title: Text('Profile')),
  ];

  Widget _buildNavItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      width: isSelected ? 130 : 50,
      height: 45,
      padding: isSelected
          ? EdgeInsets.symmetric(horizontal: 10, vertical: 10)
          : EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 130,
            child: Center(
              child: Row(
                children: <Widget>[
                  IconTheme(
                    data: IconThemeData(
                      color: isSelected ? Colors.white : Colors.black,
                      size: 25,
                    ),
                    child: item.icon,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  isSelected
                      ? DefaultTextStyle(
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    child: item.title,
                  )
                      : Container()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navItems.map((navItem) {
            int currentIndex = navItems.indexOf(navItem);
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = currentIndex;
                });
              },
              child: _buildNavItem(navItem, _selectedIndex == currentIndex),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;

  NavigationItem({this.icon, this.title});
}