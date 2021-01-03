import 'package:flutter/material.dart';
import 'package:flutter_wechat/ui/screen/main/main_screen.dart';

class ZZRouter{
  //跟页面
  static final String  initialRouter = "/";
  //
  static final Map<String, WidgetBuilder> routers = {
    ZZMainScreen.routerName:(cxt)=>ZZMainScreen()
  };

}