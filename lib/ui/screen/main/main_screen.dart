import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_wechat/ui/pages/address_book/addressbook.dart';
import 'package:flutter_wechat/ui/pages/discover/discover.dart';
import 'package:flutter_wechat/ui/pages/home/home.dart';
import 'package:flutter_wechat/ui/pages/me/me.dart';

import 'bottom_navigation_bar.dart';

class ZZMainScreen extends StatefulWidget {
  static const String routerName = "/";

  @override
  _State createState() => _State();
}

class _State extends State<ZZMainScreen> {
  int _currentIndex = 0;
  ///所有title的
  final _titles = ["微信", "通讯录", "发现", ""];
  ///当前的title
  String _currentTitle = "微信";

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
        leadingWidth: 100,
        leading: AppBarLeading(currentTitle: _currentTitle),
        actions: createActions(_currentIndex),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: children,
      ), //WeChatHomeBody(),
      bottomNavigationBar: ZZBottomNavigationBar(onTap: (value) {
        setState(() {
          print("value:${value}");
          _currentIndex = value;
          _currentTitle = _titles[value];
        });
      },currentIndex: _currentIndex,),
    );
  }
}

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    Key key,
    @required String currentTitle,
  })  : _currentTitle = currentTitle,
        super(key: key);

  final String _currentTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: Text(
        _currentTitle,
        style: TextStyle(fontSize: 17),
        maxLines: 1,
      ),
    );
  }
}



List<Widget> createActions(int index){
  switch (index){
    case  3:{
      return [Icon(Icons.camera_alt),SizedBox(width: 15,)];
    }
    break;
    default:{
      return [Icon(Icons.search), SizedBox(width: 15,),Icon(Icons.add_circle_outline),SizedBox(width: 15,)];
    }
  }

}