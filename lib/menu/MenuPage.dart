import 'package:flutter/material.dart';
import 'package:flutter_qdaily_test/utils/PageUtil.dart';
import 'aboutus/AboutUsPage.dart';
import 'package:flutter_qdaily_test/common/MenuColumnItemWidget.dart';
import 'package:flutter_qdaily_test/common/MenuRowItemWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuPage> {
  Widget seachButton(BuildContext context) {
    return SizedBox(
      width: 310.0,
      height: 35.0,
      child: FlatButton(
        onPressed: () {},
        color: Colors.white70,
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/ic_search.png"),
              width: 18.0,
              height: 18.0,
            ),
            SizedBox(width: 10.0),
            Text("搜索", style: TextStyle(color: Colors.grey, fontSize: 13.0))
          ],
        ),
      ),
    );
  }

  Widget settingRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        MenuRowItemWidget(
          icon: "assets/images/ic_setting.png",
          content: "设置",
          onTap: () {
            Fluttertoast.showToast(msg: "设置");
          },
        ),
        MenuRowItemWidget(
          icon: "assets/images/ic_night_state.png",
          content: "夜间",
          onTap: () {
            Fluttertoast.showToast(msg: "夜间");
          },
        ),
        MenuRowItemWidget(
          icon: "assets/images/ic_offline.png",
          content: "离线",
          onTap: () {
            Fluttertoast.showToast(msg: "离线");
          },
        ),
        MenuRowItemWidget(
          icon: "assets/images/ic_recomend.png",
          content: "推荐",
          onTap: () {
            Fluttertoast.showToast(msg: "推荐");
          },
        ),
      ],
    );
  }

  Widget floatButton(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(left: 40.0, bottom: 10.0),
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:
              Image(image: AssetImage("assets/images/ic_close_no_shadow.png")),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: floatButton(context),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            seachButton(context),
            SizedBox(height: 25.0),
            settingRow(context),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  MenuColumnItemWidget(
                    icon: "assets/images/ic_menu_about.png",
                    content: "关于我们",
                    onTap: () {
                      PageUtil.pushTo(context, AboutUsPage());
                    },
                  ),
                  MenuColumnItemWidget(
                    icon: "assets/images/ic_menu_category.png",
                    content: "新闻分类 >",
                    onTap: () {
                      Fluttertoast.showToast(msg: "新闻分类");
                    },
                  ),
                  MenuColumnItemWidget(
                    icon: "assets/images/ic_menu_column.png",
                    content: "栏目中心",
                    onTap: () {
                      Fluttertoast.showToast(msg: "栏目中心");
                    },
                  ),
                  MenuColumnItemWidget(
                    icon: "assets/images/ic_menu_msg.png",
                    content: "我的消息",
                    onTap: () {
                      Fluttertoast.showToast(msg: "我的消息");
                    },
                  ),
                  MenuColumnItemWidget(
                    icon: "assets/images/ic_menu_usercenter.png",
                    content: "个人中心",
                    onTap: () {
                      Fluttertoast.showToast(msg: "个人中心");
                    },
                  ),
                  MenuColumnItemWidget(
                    icon: "assets/images/ic_menu_home.png",
                    content: "意见反馈",
                    onTap: () {
                      Fluttertoast.showToast(msg: "意见反馈");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
