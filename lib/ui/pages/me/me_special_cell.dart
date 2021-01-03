import 'package:flutter/material.dart';
import 'package:flutter_wechat/ui/shared/app_theme.dart';

class ZZMeSpecialCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: ZZAppTheme.cellColors,
      alignment: Alignment(0,0),
      child: ListTile(
        leading: UserHead(),
        title: UserInfo(),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "冬瓜妹",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserAccount(),
              QrCode(),
            ],
          ),
        ],
      ),
    );
  }
}

class QrCode extends StatelessWidget {
  const QrCode({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Image.asset("name")
        Icon(
          Icons.qr_code,
          color: ZZAppTheme.darkTextColors,
          size: 12,
        ),
        SizedBox(width: 10),
        Image.asset(
          "assets/img/more.png",
          width: 15,
          height: 12,
          color: ZZAppTheme.darkTextColors,
        ),
      ],
    );
  }
}

class UserAccount extends StatelessWidget {
  const UserAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "微信号：", style: Theme.of(context).textTheme.bodyText1),
        TextSpan(
            text: "0x8BADFOOD",
            style: Theme.of(context).textTheme.bodyText1),
      ]),

    );
  }
}

class UserHead extends StatelessWidget {
  const UserHead({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/img/onlyu.png",
            ),
          ),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(5),
          )),
      width: 50,
      height: 50,
    );
  }
}
