import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => MenuState();
}

class MenuState extends State<MenuPage> {
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
        Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/ic_setting.png"),
              width: 18.0,
              height: 18.0,
            ),
            SizedBox(height: 13.0),
            Text(
              "设置",
              style: TextStyle(color: Colors.black, fontSize: 11.0),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/ic_night_state.png"),
              width: 18.0,
              height: 18.0,
            ),
            SizedBox(height: 13.0),
            Text(
              "夜间",
              style: TextStyle(color: Colors.black, fontSize: 11.0),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/ic_offline.png"),
              width: 18.0,
              height: 18.0,
            ),
            SizedBox(height: 13.0),
            Text(
              "离线",
              style: TextStyle(color: Colors.black, fontSize: 11.0),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/ic_recomend.png"),
              width: 18.0,
              height: 18.0,
            ),
            SizedBox(height: 13.0),
            Text(
              "推荐",
              style: TextStyle(color: Colors.black, fontSize: 11.0),
            )
          ],
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
                  ListTile(
                    leading: Image(
                      image: AssetImage("assets/images/ic_menu_about.png"),
                      width: 28.0,
                      height: 28.0,
                    ),
                    title: Text("关于我们", style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assets/images/ic_menu_category.png"),
                      width: 28.0,
                      height: 28.0,
                    ),
                    title: Text("新闻分类 >", style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assets/images/ic_menu_column.png"),
                      width: 28.0,
                      height: 28.0,
                    ),
                    title: Text("栏目中心", style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assets/images/ic_menu_msg.png"),
                      width: 28.0,
                      height: 28.0,
                    ),
                    title: Text("我的消息", style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assets/images/ic_menu_usercenter.png"),
                      width: 28.0,
                      height: 28.0,
                    ),
                    title: Text("个人中心", style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    leading: Image(
                      image: AssetImage("assets/images/ic_menu_home.png"),
                      width: 28.0,
                      height: 28.0,
                    ),
                    title: Text("意见反馈", style: TextStyle(fontSize: 15.0)),
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
