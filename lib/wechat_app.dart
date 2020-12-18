import 'package:flutter/material.dart';
import 'package:flutter_wechat/wechat_home.dart';

class WeChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      color: Colors.pink,
      theme: ThemeData(
          primaryColor:Colors.black,
      ),
      home: WeChatHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
