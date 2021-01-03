import 'package:flutter/material.dart';
import 'package:flutter_wechat/ui/pages/me/me_special_cell.dart';
import 'package:flutter_wechat/ui/shared/app_theme.dart';

class MeBody extends StatelessWidget {
  final _titles = [
    {"img": "pay", "title": "支付"},
    {"img": "collection", "title": "收藏"},
    {"img": "pic", "title": "朋友圈"},
    {"img": "wallet", "title": "钱包"},
    {"img": "biao_qing", "title": "表情"},
    {"img": "setting", "title": "设置"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: ListView.separated(
          itemBuilder: (cxt, index) {
            switch (index) {
              case 0:
                {
                  return ZZMeSpecialCell();
                }
                break;
              default:
                {
                  return Container(
                    color: ZZAppTheme.cellColors,
                    child: ListTile(
                      leading: Image.asset("assets/img/${_titles[index - 1]["img"]}.png",width: 30,height: 30,color: Colors.white,),
                      title: Text(
                        _titles[index - 1]["title"],
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      trailing: Image.asset(
                        "assets/img/more.png",
                        width: 15,
                        height: 20,
                      ),
                    ),
                  );
                }
            }
          },
          itemCount: _titles.length + 1,

          separatorBuilder: builderDivide(),
        ),
      ),
    );
  }
}

IndexedWidgetBuilder builderDivide() {
  return (BuildContext cxt, int index) {
    double height;
    switch (index) {
      case 0: case 1: case 5: case 6: case 8:
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
