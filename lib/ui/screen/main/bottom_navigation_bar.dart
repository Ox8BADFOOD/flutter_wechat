import 'package:flutter/material.dart';

class ZZBottomNavigationBar extends BottomNavigationBar {
  static final _fixItems = [
    BottomNavigationBarItem(
        icon: ZZBottomNavigationBar.createIcon("bubble", Colors.white),
        activeIcon: createIcon("bubble", Colors.green),
        label: "微信"),
    BottomNavigationBarItem(
        icon: ZZBottomNavigationBar.createIcon("contact", Colors.white),
        activeIcon: createIcon("contact", Colors.green),
        label: "通讯录"),
    BottomNavigationBarItem(
        icon: ZZBottomNavigationBar.createIcon("discover", Colors.white),
        activeIcon: createIcon("discover", Colors.green),
        label: "发现"),
    BottomNavigationBarItem(
        icon: ZZBottomNavigationBar.createIcon("me", Colors.white),
        activeIcon: createIcon("me", Colors.green),
        label: "我"),
  ];
  final ValueChanged<int> onTap;
  final int currentIndex;
  ZZBottomNavigationBar({
    Key key,
    this.onTap,
    this.currentIndex
  }) : super(
          key: key,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.green, fontSize: 15),
          unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 15),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF333333),
          items: ZZBottomNavigationBar._fixItems,
        );

// const ZZBottomNavigationBar({
//   Key key,
//   @required int currentIndex,
//   @required this.items,
// }) : _currentIndex = currentIndex, super(key: key);

// final int _currentIndex;
// final List<BottomNavigationBarItem> items;

// @override
// Widget build(BuildContext context) {
//   return BottomNavigationBar(
//     currentIndex: _currentIndex,
//     selectedItemColor: Colors.green,
//     unselectedItemColor: Colors.white,
//     selectedLabelStyle: TextStyle(color: Colors.green, fontSize: 15),
//     unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 15),
//     type: BottomNavigationBarType.fixed,
//     backgroundColor: Colors.black,
//     items: items,
//   );
// }

  static Image createIcon(String name, Color color) {
    return Image.asset(
      "assets/img/$name.png",
      width: 20,
      height: 20,
      color: color,
    );
  }
}


