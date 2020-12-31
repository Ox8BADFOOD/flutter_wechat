import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_wechat/ui/pages/address_book/addressbook.dart';
import 'package:flutter_wechat/ui/pages/discover/discover.dart';
import 'package:flutter_wechat/ui/pages/home/home.dart';
import 'package:flutter_wechat/ui/pages/home/home_body.dart';
import 'package:flutter_wechat/ui/pages/me/me.dart';

class ZZMainScreen extends StatefulWidget {
  static const String routerName = "/";

  @override
  _State createState() => _State();
}

class _State extends State<ZZMainScreen> {
  int _currentIndex = 0;
  final _titles = ["微信", "通讯录", "发现", ""];
  String _currentTitle = "微信";
  final items = [
    BottomNavigationBarItem(
        icon: createIcon("bubble", Colors.white),
        activeIcon: createIcon("bubble", Colors.green),
        label: "微信"),
    BottomNavigationBarItem(
        icon: createIcon("contact", Colors.white),
        activeIcon: createIcon("contact", Colors.green),
        label: "通讯录"),
    BottomNavigationBarItem(
        icon: createIcon("discover", Colors.white),
        activeIcon: createIcon("discover", Colors.green),
        label: "发现"),
    BottomNavigationBarItem(
        icon: createIcon("me", Colors.white),
        activeIcon: createIcon("me", Colors.green),
        label: "我"),
  ];

  final children = [
    HomeScreen(),
    AddressBookScreen(),
    DiscoverScreen(),
    MeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("wechat"),
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
          child: Text(
            _currentTitle,
            style: TextStyle(fontSize: 17),
            maxLines: 1,
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: children,
      ), //WeChatHomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.green, fontSize: 15),
        unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 15),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: items,
        onTap: (value) {
          setState(() {
            print("value:${value}");
            _currentIndex = value;
            _currentTitle = _titles[value];
          });
        },
      ),
    );
  }
}

Image createIcon(String name, Color color) {
  return Image.asset(
    "assets/img/$name.png",
    width: 20,
    height: 20,
    color: color,
  );
}
