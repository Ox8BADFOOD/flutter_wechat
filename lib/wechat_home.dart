import 'package:flutter/material.dart';
import 'package:flutter_wechat/wechat_home_body.dart';

class WeChatHome extends StatefulWidget {
  @override
  _WeChatHomeState createState() => _WeChatHomeState();
}

class _WeChatHomeState extends State<WeChatHome> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wechat"),
      ),
      body: WeChatHomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.green,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          //三个是黑色 四个变成白色了
          createItem(Icons.message, "微信"),
          createItem(Icons.assignment_ind_outlined, "通讯录"),
          createItem(Icons.assistant_navigation, "发现"),
          createItem(Icons.person, "我"),
        ],
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem createItem(IconData iconData,String text){
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label:text,
      backgroundColor: Colors.black
    );
  }
}
