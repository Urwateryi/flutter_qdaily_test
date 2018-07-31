import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => MenuState();
}

class MenuState extends State<MenuPage> {
  Widget floatButton(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(left: 40.0, bottom: 10.0),
      child: SizedBox(
        width: 45.0,
        height: 45.0,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Image(image: AssetImage("assets/images/ic_close_no_shadow.png")),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatButton(context),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text("赞赏"),
                  ),
                  ListTile(
                    leading: Icon(Icons.comment),
                    title: Text("评论"),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite_border),
                    title: Text("喜欢"),
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text("分享"),
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
