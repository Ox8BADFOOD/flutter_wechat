import 'package:flutter/material.dart';
import 'package:flutter_wechat/core/router/router.dart';
import 'package:flutter_wechat/ui/pages/home/home.dart';
import 'package:flutter_wechat/ui/shared/app_theme.dart';

class WeChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      color: Colors.pink,
      theme: ZZAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: ZZRouter.initialRouter,
      routes: ZZRouter.routers,
    );
  }
}
