import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wechat/ui/shared/app_theme.dart';

class DiscoverBody extends StatelessWidget {

  final items = [
    {"title": "朋友圈", "img": "assets/img/moments.png"},
    {"title": "视频号", "img": "assets/img/movie.png"},
    {"title": "扫一扫", "img": "assets/img/scan.png"},
    {"title": "摇一摇", "img": "assets/img/shake.png"},
    {"title": "看一看", "img": "assets/img/looklook.png"},
    {"title": "搜一搜", "img": "assets/img/search_search.png"},
    {"title": "附近的人和直播", "img": "assets/img/near_near.png"},
    {"title": "购物", "img": "assets/img/buy_buy.png"},
    {"title": "游戏", "img": "assets/img/game_game.png"},
    {"title": "小程序", "img": "assets/img/mini_program.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView.separated(
          itemBuilder: buildItem(),
          separatorBuilder: builderDivide(),
          itemCount: 10,
        ),
      ),
      color: Colors.black,
    );
  }

  IndexedWidgetBuilder buildItem() {
    return (BuildContext cxt, int index) {
      return Container(
        child: ListTile(
          leading: Image.asset(
            items[index]["img"],
            width: 30,
            height: 30,
            color: ZZAppTheme.darkTextColors,
          ),
          title: Text(
            items[index]["title"],
            style: Theme.of(cxt).textTheme.bodyText1,
          ),
          trailing: listItemTrailingWidget(cxt,index),
        ),
        color: ZZAppTheme.cellColors,
      );
    };
  }

  Widget listItemTrailingWidget(BuildContext cxt,int index) {
    String title;
    bool offstage = true;
    switch (index) {
      case 1:
        {
          title = "赞过";
          offstage = false;
        }
        break;
      case 8:
        {
          title = "你有梦境福利可领";
          offstage = false;
        }
        break;
      default:
        {
          title = "";
        }
    }
    return Container(
      width: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OffstageListItemTrailingImg(offstage: offstage),
          Text(
            title,
            style: Theme.of(cxt).textTheme.bodyText1,
            overflow: TextOverflow.ellipsis,
          ),
          Image.asset(
            "assets/img/more.png",
            width: 20,
            height: 15,
            color: ZZAppTheme.darkTextColors,
          ),
        ],
      ),
    );
  }

  IndexedWidgetBuilder builderDivide() {
    return (BuildContext cxt, int index) {
      double height;
      switch (index) {
        case 0: case 1: case 3: case 5: case 6: case 8:
          {
            height = 10;
          }
          break;
        default:
          {
            height = 0;
          }
          break;
      }
      return dividers(height);
    };
  }

  Column dividers(double height) {
    return Column(
      children: [
        Divider(
          height: 1,
          color: Colors.black26,
        ),
        Container(
          width: double.infinity,
          height: height,
          color: Color.fromRGBO(0, 0, 0, 0),
        )
      ],
    );
  }
}

class OffstageListItemTrailingImg extends StatelessWidget {
  const OffstageListItemTrailingImg({
    Key key,
    @required this.offstage,
  }) : super(key: key);

  final bool offstage;

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: offstage,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: ListItemTrailingImg(),
      ),
    );
  }
}

class ListItemTrailingImg extends StatelessWidget {
  const ListItemTrailingImg({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(3))
      ),
      child:Image.network(
        "https://c-ssl.duitang.com/uploads/blog/202010/14/20201014114715_23f13.png",
        width: 30,
        height: 30,
      ),
    );
  }
}
