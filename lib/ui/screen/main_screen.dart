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
  final items = [
    BottomNavigationBarItem(icon:Icon(Icons.message) ,label:"微信"),
    BottomNavigationBarItem(icon: Icon(Icons.assignment_ind_outlined),label:"通讯录"),
    BottomNavigationBarItem(icon: Icon(Icons.assistant_navigation),label:"发现"),
    BottomNavigationBarItem(icon: Icon(Icons.person),label:"我")
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
        title: Text("wechat"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: children,
      ),//WeChatHomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.green,fontSize: 15),
        unselectedLabelStyle: TextStyle(color: Colors.white,fontSize: 15),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: items,
        onTap: (value){
          setState(() {
            print("value:${value}");
            _currentIndex = value;
          });
        },
      ),
    );
  }


}
