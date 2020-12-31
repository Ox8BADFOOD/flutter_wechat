import 'package:flutter/material.dart';
import 'package:flutter_wechat/core/router/router.dart';
import 'package:flutter_wechat/ui/pages/home/home.dart';

class WeChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      color: Colors.pink,
      theme: ThemeData(
          primaryColor:Colors.black,
          splashColor: Color.fromRGBO(0, 0, 0, 0),
          highlightColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: ZZRouter.initialRouter,
      routes: ZZRouter.routers,
    );
  }
}
